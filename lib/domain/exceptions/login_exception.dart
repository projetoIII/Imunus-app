class LoginException implements Exception {
  String? message;

  LoginException({this.message});

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return "LoginException";
    return "LoginException: $message";
  }
}
