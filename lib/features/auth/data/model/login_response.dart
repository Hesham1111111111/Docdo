class LoginResponse {
  final String message;
  final LoginData data;
  final bool status;
  final int code;

  LoginResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      message: json['message'],
      data: LoginData.fromJson(json['data']),
      status: json['status'],
      code: json['code'],
    );
  }
}

class LoginData {
  final String token;
  final String username;

  LoginData({
    required this.token,
    required this.username,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      token: json['token'],
      username: json['username'],
    );
  }
}