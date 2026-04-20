class SingUpResponse {
  final String massage;

  final Map<String, dynamic>? data;
  final bool status;
  final int code;

  SingUpResponse({
    required this.massage,
    required this.data,
    required this.status,
    required this.code,
  });

  factory SingUpResponse.fromeJson(Map<String, dynamic> json) {
    return SingUpResponse(
      massage: json['message'] ?? '',
      data: json['data'] ?? {},
      status: json['status'] ?? false,
      code: json['code'] ?? 0,
    );
  }
}