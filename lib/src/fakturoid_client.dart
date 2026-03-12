import 'package:dio/dio.dart';
import 'auth/auth_repository.dart';
import 'auth/fakturoid_auth_interceptor.dart';
import 'auth/secure_storage_service.dart';
import 'auth/token_storage.dart';
import 'core/exceptions/fakturoid_error_interceptor.dart';
import 'repositories/subjects_repository.dart';
import 'repositories/invoices_repository.dart';
import 'repositories/invoice_payments_repository.dart';
import 'repositories/expenses_repository.dart';
import 'repositories/expense_payments_repository.dart';
import 'repositories/bank_accounts_repository.dart';
import 'repositories/inventory_items_repository.dart';
import 'repositories/account_repository.dart';
import 'repositories/todos_repository.dart';
import 'repositories/events_repository.dart';
import 'repositories/users_repository.dart';
import 'repositories/number_formats_repository.dart';
import 'repositories/webhooks_repository.dart';
import 'repositories/inbox_files_repository.dart';
import 'repositories/invoice_messages_repository.dart';
import 'repositories/generators_repository.dart';
import 'repositories/recurring_generators_repository.dart';
import 'repositories/inventory_moves_repository.dart';

class FakturoidClient {
  late final Dio _dio;
  late final AuthRepository auth;
  late final TokenStorage tokenStorage;

  late final AccountRepository account;
  late final UsersRepository users;
  late final SubjectsRepository subjects;
  late final InvoicesRepository invoices;
  late final InvoicePaymentsRepository invoicePayments;
  late final InvoiceMessagesRepository invoiceMessages;
  late final ExpensesRepository expenses;
  late final ExpensePaymentsRepository expensePayments;
  late final BankAccountsRepository bankAccounts;
  late final NumberFormatsRepository numberFormats;
  late final InventoryItemsRepository inventoryItems;
  late final InventoryMovesRepository inventoryMoves;
  late final GeneratorsRepository generators;
  late final RecurringGeneratorsRepository recurringGenerators;
  late final InboxFilesRepository inboxFiles;
  late final TodosRepository todos;
  late final EventsRepository events;
  late final WebhooksRepository webhooks;

  /// Vytvoří klienta pro Fakturoid API.
  ///
  /// [slug] je subdoména tvého účtu, např. 'firma' pro 'https://app.fakturoid.cz/api/v3/accounts/firma/'
  /// [userAgent] je identifikace tvé aplikace, např. 'MojeApp (jan@novak.cz)'. Dle doporučení Fakturoid API by to měl být název a email.
  FakturoidClient({
    required String slug,
    required String clientId,
    required String clientSecret,
    required String redirectUri,
    required String userAgent,
    Dio? dioOverride,
    TokenStorage? customTokenStorage,
  }) {
    // Použije se výchozí SecureStorage (Keychain/Keystore) izolovaná pomocí slug
    tokenStorage = customTokenStorage ?? SecureStorageService(namespace: slug);

    _dio =
        dioOverride ??
        Dio(
          BaseOptions(
            baseUrl: 'https://app.fakturoid.cz/api/v3/accounts/$slug',
            headers: {
              'Content-Type': 'application/json',
              'User-Agent': userAgent,
            },
          ),
        );

    auth = AuthRepository(
      dio:
          Dio(), // Samostatná instance pro auth požadavky (zabraňuje zacyklení interceptorů)
      tokenStorage: tokenStorage,
      clientId: clientId,
      clientSecret: clientSecret,
      redirectUri: redirectUri,
    );

    _dio.interceptors.addAll([
      FakturoidAuthInterceptor(
        tokenStorage: tokenStorage,
        authRepository: auth,
        dio: _dio,
      ),
      FakturoidErrorInterceptor(), // Přidáno parsování Fakturoid výjimek
    ]);

    account = AccountRepository(_dio);
    users = UsersRepository(_dio);
    subjects = SubjectsRepository(_dio);
    invoices = InvoicesRepository(_dio);
    invoicePayments = InvoicePaymentsRepository(_dio);
    invoiceMessages = InvoiceMessagesRepository(_dio);
    expenses = ExpensesRepository(_dio);
    expensePayments = ExpensePaymentsRepository(_dio);
    bankAccounts = BankAccountsRepository(_dio);
    numberFormats = NumberFormatsRepository(_dio);
    inventoryItems = InventoryItemsRepository(_dio);
    inventoryMoves = InventoryMovesRepository(_dio);
    generators = GeneratorsRepository(_dio);
    recurringGenerators = RecurringGeneratorsRepository(_dio);
    inboxFiles = InboxFilesRepository(_dio);
    todos = TodosRepository(_dio);
    events = EventsRepository(_dio);
    webhooks = WebhooksRepository(_dio);
  }
}
