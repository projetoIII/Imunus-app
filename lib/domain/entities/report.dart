import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:imunus/core/enums/emotion_type.dart';
import 'package:imunus/core/enums/symptom_type.dart';
import 'package:imunus/domain/entities/symptom.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    int? id,
    SymptomType? symptom,
    EmotionType? emotion,
    required List<int> days,
    List<String>? comments,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
