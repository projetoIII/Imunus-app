// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmotionReport _$$_EmotionReportFromJson(Map<String, dynamic> json) =>
    _$_EmotionReport(
      id: json['id'] as int?,
      emotions: (json['emotions'] as List<dynamic>)
          .map((e) => Emotion.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'],
      comment: json['comment'] as String?,
      commentAnalysis: json['commentAnalysis'] as String?,
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_EmotionReportToJson(_$_EmotionReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emotions': instance.emotions.map((e) => e.toJson()).toList(),
      'userId': instance.userId,
      'comment': instance.comment,
      'commentAnalysis': instance.commentAnalysis,
      'createAt': instance.createAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
