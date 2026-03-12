import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';

class PkceUtils {
  /// Generates a random crypto-secure string for PKCE code verifier.
  static String generateCodeVerifier({int length = 64}) {
    final random = Random.secure();
    final values = List<int>.generate(length, (i) => random.nextInt(256));

    // Zajištění kompatibility znaků s URL dle rfc7636
    return base64UrlEncode(values).replaceAll('=', '');
  }

  /// Generates a code challenge from a code verifier using S256 (SHA-256).
  static String generateCodeChallenge(String codeVerifier) {
    final bytes = utf8.encode(codeVerifier);
    final digest = sha256.convert(bytes);

    // Zajištění kompatibility znaků s URL dle rfc7636
    return base64UrlEncode(digest.bytes).replaceAll('=', '');
  }
}
