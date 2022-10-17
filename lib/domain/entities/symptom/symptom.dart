import 'package:imunus/core/enums/symptom_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'symptom.freezed.dart';
part 'symptom.g.dart';

@freezed
class Symptom with _$Symptom {
  const factory Symptom({
    int? id,
    required SymptomType symptomType,
    required dynamic userId,
    required num rating,
    required DateTime reportedAt,
    String? comment,
    DateTime? createAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
}
