// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Emotion _$$_EmotionFromJson(Map<String, dynamic> json) => _$_Emotion(
      id: json['id'] as int?,
      emotion: $enumDecode(_$EmotionTypeEnumMap, json['emotion']),
      reportedAt: json['reportedAt'] == null
          ? null
          : DateTime.parse(json['reportedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_EmotionToJson(_$_Emotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emotion': _$EmotionTypeEnumMap[instance.emotion]!,
      'reportedAt': instance.reportedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'comment': instance.comment,
    };

const _$EmotionTypeEnumMap = {
  EmotionType.happy: 'happy',
  EmotionType.sad: 'sad',
  EmotionType.confident: 'confident',
  EmotionType.sensible: 'sensible',
  EmotionType.distracted: 'distracted',
  EmotionType.focused: 'focused',
  EmotionType.relaxed: 'relaxed',
  EmotionType.active: 'active',
  EmotionType.down: 'down',
  EmotionType.sociable: 'sociable',
  EmotionType.keyedUp: 'keyedUp',
  EmotionType.nervous: 'nervous',
};
