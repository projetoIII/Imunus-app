abstract class BaseEntity {
  Map<String, dynamic> toJson<T>(T body);
  fromJson(Map<String, dynamic> json);
}
