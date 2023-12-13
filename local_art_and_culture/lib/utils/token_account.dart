class TokenManager {
  static String? _accessToken;

  static setAccessToken(String token) {
    _accessToken = token;
  }

  static String? getAccessToken() {
    return _accessToken;
  }
}
