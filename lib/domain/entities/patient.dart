import 'package:imunus/domain/entities/base_entity.dart';

class Patient implements BaseEntity {
  String id;
  String name;
  String email;
  String? photo;

  Patient(
      {required this.id, required this.name, required this.email, this.photo});

  @override
  Patient fromJson(Map<String, dynamic> json) => Patient(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        photo: json["photo"],
      );

  @override
  Map<String, dynamic> toJson<Patient>(Patient body) => {
        "id": id,
        "name": name,
        "email": email,
        "photo": photo ?? "",
      };
}
