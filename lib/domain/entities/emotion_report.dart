import 'package:imunus/domain/entities/emotion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'emotion_report.freezed.dart';
part 'emotion_report.g.dart';

@freezed
class EmotionReport with _$EmotionReport {
  const factory EmotionReport({
    int? id,
    required List<Emotion> emotions,
    required dynamic userId,
    String? comment,
    DateTime? createAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _EmotionReport;

  factory EmotionReport.fromJson(Map<String, dynamic> json) =>
      _$EmotionReportFromJson(json);
}
