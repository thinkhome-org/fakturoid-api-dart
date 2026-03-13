import 'package:dio/dio.dart';

class FakturoidRateLimit {
  final String policyName;
  final int? quota;
  final int? windowSeconds;
  final int? remaining;
  final int? resetInSeconds;

  const FakturoidRateLimit({
    required this.policyName,
    this.quota,
    this.windowSeconds,
    this.remaining,
    this.resetInSeconds,
  });

  bool get isExhausted => remaining == 0;

  static FakturoidRateLimit? fromHeaders(Headers? headers) {
    if (headers == null) {
      return null;
    }

    final policyHeader = headers.value('X-RateLimit-Policy');
    final rateLimitHeader = headers.value('X-RateLimit');
    if (policyHeader == null && rateLimitHeader == null) {
      return null;
    }

    final policyParts = _parseHeader(policyHeader);
    final rateLimitParts = _parseHeader(rateLimitHeader);
    final policyName =
        policyParts['name'] ?? rateLimitParts['name'] ?? 'default';

    return FakturoidRateLimit(
      policyName: policyName,
      quota: _parseInt(policyParts['q']),
      windowSeconds: _parseInt(policyParts['w']),
      remaining: _parseInt(rateLimitParts['r']),
      resetInSeconds: _parseInt(rateLimitParts['t']),
    );
  }

  static Map<String, String> _parseHeader(String? value) {
    if (value == null || value.isEmpty) {
      return const <String, String>{};
    }

    final segments = value.split(';');
    final result = <String, String>{};
    final name = segments.first.trim();
    if (name.isNotEmpty) {
      result['name'] = name;
    }

    for (final segment in segments.skip(1)) {
      final trimmed = segment.trim();
      final separatorIndex = trimmed.indexOf('=');
      if (separatorIndex <= 0 || separatorIndex == trimmed.length - 1) {
        continue;
      }

      result[trimmed.substring(0, separatorIndex)] = trimmed.substring(
        separatorIndex + 1,
      );
    }

    return result;
  }

  static int? _parseInt(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    return int.tryParse(value);
  }

  @override
  String toString() {
    return 'FakturoidRateLimit(policyName: $policyName, quota: $quota, '
        'windowSeconds: $windowSeconds, remaining: $remaining, '
        'resetInSeconds: $resetInSeconds)';
  }
}

/// Fakturoid API v3 doesn't return total pages headers anymore.
/// You should collect items using `page` parameter until items list is empty.
class PaginatedResponse<T> {
  final List<T> items;
  final int currentPage;
  final FakturoidRateLimit? rateLimit;

  /// Returns true if the page has 40 items. This is a heuristic indication
  /// that there might be a next page since Fakturoid returns 40 items per page max.
  bool get hasNextPage => items.length == 40;

  PaginatedResponse({
    required this.items,
    required this.currentPage,
    this.rateLimit,
  });

  factory PaginatedResponse.fromResponse(
    Response<dynamic> response, {
    required int currentPage,
    required T Function(Map<String, dynamic> json) fromJson,
  }) {
    final data = response.data;
    if (data is! List) {
      throw StateError('Expected a list response for paginated endpoint.');
    }

    return PaginatedResponse<T>(
      items: data
          .map(
            (json) => fromJson(
              Map<String, dynamic>.from(json as Map<dynamic, dynamic>),
            ),
          )
          .toList(),
      currentPage: currentPage,
      rateLimit: FakturoidRateLimit.fromHeaders(response.headers),
    );
  }
}
