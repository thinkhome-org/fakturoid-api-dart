#!/bin/bash

# Exit on any error
set -e

ENV_FILE=".env.fakturoid.local"

if [ ! -f "$ENV_FILE" ]; then
  echo "Missing $ENV_FILE. Copy .env.example and fill in runtime secrets." >&2
  exit 1
fi

# Load environment variables
# Note: This expects standard shell syntax like 'export VAR=VAL' in the file.
source "$ENV_FILE"

export FAKTUROID_RUN_LIVE_TESTS=true

if [ $# -gt 0 ]; then
  # Run specific tests passed as arguments
  dart test "$@"
else
  # List of all live tests to run in sequence
  TESTS=(
    "test/live_authorization_test.dart"
    "test/live_account_test.dart"
    "test/live_users_test.dart"
    "test/live_bank_accounts_test.dart"
    "test/live_number_formats_test.dart"
    "test/live_subjects_test.dart"
    "test/live_invoices_test.dart"
    "test/live_estimates_test.dart"
    "test/live_invoice_payments_test.dart"
    "test/live_invoice_messages_test.dart"
    "test/live_expenses_test.dart"
    "test/live_expense_payments_test.dart"
    "test/live_inbox_files_test.dart"
    "test/live_inventory_items_test.dart"
    "test/live_inventory_moves_test.dart"
    "test/live_generators_test.dart"
    "test/live_recurring_generators_test.dart"
    "test/live_todos_test.dart"
    "test/live_events_test.dart"
    "test/live_webhooks_test.dart"
  )

  for T in "${TESTS[@]}"; do
    echo "------------------------------------------------------------"
    echo "Running $T..."
    echo "------------------------------------------------------------"
    
    # Run test, don't exit on failure so we can continue with others or cleanup
    set +e
    dart test "$T"
    TEST_EXIT_CODE=$?
    set -e

    if [ $TEST_EXIT_CODE -ne 0 ]; then
      echo "❌ Test $T failed with exit code $TEST_EXIT_CODE!"
    else
      echo "✅ Test $T passed."
    fi

    echo "Sleeping 5 seconds to respect rate limits..."
    sleep 5
  done

  export FAKTUROID_RUN_CLEANUP=true
  echo "------------------------------------------------------------"
  echo "Running cleanup..."
  echo "------------------------------------------------------------"
  dart test test/live_cleanup_test.dart
fi
