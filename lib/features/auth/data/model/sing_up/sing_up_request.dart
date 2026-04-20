class SingUpRequest {
  final String name;

  final String email;
  final String phone;

  final String password;

  final String confirmPassword;
  final int gender ;

  SingUpRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phone,
    required this.gender,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': confirmPassword,
      'gender': gender,
    };
  }
}
