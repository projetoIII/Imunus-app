import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:imunus/core/enums/emotion_type.dart';

part 'emotion.freezed.dart';
part 'emotion.g.dart';

@freezed
class Emotion with _$Emotion {
  const factory Emotion({
    int? id,
    required EmotionType emotion,
    DateTime? reportedAt,
    DateTime? deletedAt,
    String? comment,
  }) = _Emotion;

  factory Emotion.fromJson(Map<String, dynamic> json) =>
      _$EmotionFromJson(json);
}
