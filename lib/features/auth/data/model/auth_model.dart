class AuthModel {
  final String email;
  final String password;
  final String? confirmPassword;
  final String? name;
  final String? phone;

  AuthModel({
    required this.email,
    required this.password,
    this.confirmPassword,
    this.name,
    this.phone,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      confirmPassword: json['confirmPassword'],
      name: json['name'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'name': name,
      'phone': phone,
    };
  }
}
