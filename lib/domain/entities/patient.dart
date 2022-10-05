import 'package:imunus/domain/entities/base_entity.dart';

class Patient implements BaseEntity {
  String name;
  String email;
  String? photo;

  Patient({required this.name, required this.email, this.photo});

  @override
  Patient fromJson(Map<String, dynamic> json) => Patient(
        name: json["name"],
        email: json["email"],
        photo: json["photo"],
      );

  @override
  Map<String, dynamic> toJson<Patient>(Patient body) => {
        "name": name,
        "email": email,
        "photo": photo ?? "",
      };
}
