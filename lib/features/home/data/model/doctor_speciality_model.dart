class SpecializationResponse {
  final String message;
  final List<Specialization> data;

  SpecializationResponse({
    required this.message,
    required this.data,
  });

  factory SpecializationResponse.fromJson(Map<String, dynamic> json) {
    return SpecializationResponse(
      message: json['message'] ?? '',
      data: (json['data'] as List? ?? [])
          .map((e) => Specialization.fromJson(e))
          .toList(),
    );
  }
}

class Specialization {
  final int id;
  final String name;
  final List<Doctor> doctors;

  Specialization({
    required this.id,
    required this.name,
    required this.doctors,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) {
    return Specialization(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      doctors: (json['doctors'] as List? ?? [])
          .map((e) => Doctor.fromJson(e))
          .toList(),
    );
  }
}

class Doctor {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String? description;
  final String degree;
  final SpecializationMini specialization;

  Doctor({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    this.description,
    required this.degree,
    required this.specialization,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      photo: json['photo'] ?? '', // 🔥 مهم
      gender: json['gender'] ?? '',
      address: json['address'] ?? '',
      description: json['description'],
      degree: json['degree'] ?? '',
      specialization:
      SpecializationMini.fromJson(json['specialization'] ?? {}),
    );
  }
}

class SpecializationMini {
  final int id;
  final String name;

  SpecializationMini({
    required this.id,
    required this.name,
  });

  factory SpecializationMini.fromJson(Map<String, dynamic> json) {
    return SpecializationMini(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
    );
  }
}