/// Fakturoid API v3 doesn't return total pages headers anymore.
/// You should collect items using `page` parameter until items list is empty.
class PaginatedResponse<T> {
  final List<T> items;
  final int currentPage;

  /// Returns true if the page has 40 items. This is a heuristic indication
  /// that there might be a next page since Fakturoid returns 40 items per page max.
  bool get hasNextPage => items.length == 40;

  PaginatedResponse({required this.items, required this.currentPage});
}
