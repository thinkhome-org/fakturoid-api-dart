import 'package:dio/dio.dart';
import 'auth/auth_repository.dart';
import 'auth/fakturoid_auth_interceptor.dart';
import 'auth/in_memory_token_storage.dart';
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
import 'repositories/estimates_repository.dart';

class FakturoidClient {
  late final Dio _accountDio;
  late final Dio _rootDio;
  late final AuthRepository auth;
  late final TokenStorage tokenStorage;

  late final AccountRepository account;
  late final UsersRepository users;
  late final SubjectsRepository subjects;
  late final InvoicesRepository invoices;
  late final EstimatesRepository estimates;
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
    // Výchozí TokenStorage je nyní InMemoryTokenStorage, protože jde o čistou Dart knihovnu.
    // Uživatel si může implementovat vlastní TokenStorage pro perzistentní ukládání.
    tokenStorage = customTokenStorage ?? InMemoryTokenStorage();

    _rootDio =
        dioOverride ??
        Dio(
          BaseOptions(
            baseUrl: 'https://app.fakturoid.cz/api/v3/',
            headers: {
              'Content-Type': 'application/json',
              'User-Agent': userAgent,
            },
          ),
        );

    _accountDio = Dio(_rootDio.options.copyWith());
    _accountDio.httpClientAdapter = _rootDio.httpClientAdapter;
    final rootBaseUrl = _rootDio.options.baseUrl.endsWith('/')
        ? _rootDio.options.baseUrl.substring(
            0,
            _rootDio.options.baseUrl.length - 1,
          )
        : _rootDio.options.baseUrl;
    _accountDio.options.baseUrl = '$rootBaseUrl/accounts/$slug/';

    auth = AuthRepository(
      dio: Dio(
        _rootDio.options.copyWith(headers: {'Accept': 'application/json'}),
      )..httpClientAdapter = _rootDio.httpClientAdapter,
      tokenStorage: tokenStorage,
      clientId: clientId,
      clientSecret: clientSecret,
      redirectUri: redirectUri,
      userAgent: userAgent,
    );

    _rootDio.interceptors.addAll([
      FakturoidAuthInterceptor(
        tokenStorage: tokenStorage,
        authRepository: auth,
        dio: _rootDio,
      ),
      FakturoidErrorInterceptor(),
    ]);

    _accountDio.interceptors.addAll([
      FakturoidAuthInterceptor(
        tokenStorage: tokenStorage,
        authRepository: auth,
        dio: _accountDio,
      ),
      FakturoidErrorInterceptor(),
    ]);

    _initRepositories();
  }

  void _initRepositories() {
    account = AccountRepository(_accountDio);
    users = UsersRepository(accountDio: _accountDio, rootDio: _rootDio);
    subjects = SubjectsRepository(_accountDio);
    invoices = InvoicesRepository(_accountDio);
    estimates = EstimatesRepository(_accountDio);
    invoicePayments = InvoicePaymentsRepository(_accountDio);
    invoiceMessages = InvoiceMessagesRepository(_accountDio);
    expenses = ExpensesRepository(_accountDio);
    expensePayments = ExpensePaymentsRepository(_accountDio);
    bankAccounts = BankAccountsRepository(_accountDio);
    numberFormats = NumberFormatsRepository(_accountDio);
    inventoryItems = InventoryItemsRepository(_accountDio);
    inventoryMoves = InventoryMovesRepository(_accountDio);
    generators = GeneratorsRepository(_accountDio);
    recurringGenerators = RecurringGeneratorsRepository(_accountDio);
    inboxFiles = InboxFilesRepository(_accountDio);
    todos = TodosRepository(_accountDio);
    events = EventsRepository(_accountDio);
    webhooks = WebhooksRepository(_accountDio);
  }

  /// Přepne klienta na jiný účet (změní slug v URL).
  /// Užitečné, pokud uživatel má přístup k více účtům.
  void switchAccount(String slug) {
    final rootBaseUrl = _rootDio.options.baseUrl.endsWith('/')
        ? _rootDio.options.baseUrl.substring(
            0,
            _rootDio.options.baseUrl.length - 1,
          )
        : _rootDio.options.baseUrl;
    _accountDio.options.baseUrl = '$rootBaseUrl/accounts/$slug/';
  }
}
