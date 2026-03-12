/// Pomocné funkce pro serializaci modelů v SDK
class ApiUtils {
  /// Rekurzivně odstraní z JSON mapy a listů klíče s hodnotou null.
  /// Užitečné pro přípravu payloadu před odesláním (PATCH/POST požadavky),
  /// aby nedošlo k nechtěnému přepsání existujících dat na straně API.
  static Map<String, dynamic> removeNulls(Map<String, dynamic> json) {
    return _removeNullsRecursive(json) as Map<String, dynamic>;
  }

  static dynamic _removeNullsRecursive(dynamic json) {
    if (json is Map) {
      final map = <String, dynamic>{};
      json.forEach((key, value) {
        if (value != null) {
          map[key.toString()] = _removeNullsRecursive(value);
        }
      });
      return map;
    } else if (json is List) {
      final list = <dynamic>[];
      for (var item in json) {
        if (item != null) {
          list.add(_removeNullsRecursive(item));
        }
      }
      return list;
    }
    return json;
  }
}
