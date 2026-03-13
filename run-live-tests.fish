#!/usr/bin/env fish

if not test -f .env.fakturoid.local
  printf 'Missing .env.fakturoid.local. Copy .env.fakturoid.local.example and fill in runtime secrets.\n' >&2
  exit 1
end

source .env.fakturoid.local

set -gx FAKTUROID_RUN_LIVE_TESTS true

if test (count $argv) -gt 0
  flutter test $argv
else
  set tests \
    test/live_authorization_test.dart \
    test/live_account_test.dart \
    test/live_users_test.dart \
    test/live_bank_accounts_test.dart \
    test/live_number_formats_test.dart \
    test/live_subjects_test.dart \
    test/live_invoices_test.dart \
    test/live_estimates_test.dart \
    test/live_invoice_payments_test.dart \
    test/live_invoice_messages_test.dart \
    test/live_expenses_test.dart \
    test/live_expense_payments_test.dart \
    test/live_inbox_files_test.dart \
    test/live_inventory_items_test.dart \
    test/live_inventory_moves_test.dart \
    test/live_generators_test.dart \
    test/live_recurring_generators_test.dart \
    test/live_todos_test.dart \
    test/live_events_test.dart \
    test/live_webhooks_test.dart \
    test/live_stats_test.dart

  for t in $tests
    echo "Running $t..."
    flutter test $t
    if test $status -ne 0
      echo "Test $t failed!"
    end
    echo "Sleeping 5 seconds to respect rate limits..."
    sleep 5
  end

  set -gx FAKTUROID_RUN_CLEANUP true
  echo "Running cleanup..."
  flutter test test/live_cleanup_test.dart
end
