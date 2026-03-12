#!/usr/bin/env fish

if not test -f .env.fakturoid.local
  printf 'Missing .env.fakturoid.local. Copy .env.fakturoid.local.example and fill in runtime secrets.\n' >&2
  exit 1
end

source .env.fakturoid.local

flutter test \
  test/live_smoke_test.dart \
  test/live_full_api_test.dart \
  test/live_auth_code_test.dart
