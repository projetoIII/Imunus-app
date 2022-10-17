// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      id: json['id'] as int?,
      symptom: $enumDecodeNullable(_$SymptomTypeEnumMap, json['symptom']),
      emotion: $enumDecodeNullable(_$EmotionTypeEnumMap, json['emotion']),
      days: (json['days'] as List<dynamic>).map((e) => e as int).toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'id': instance.id,
      'symptom': _$SymptomTypeEnumMap[instance.symptom],
      'emotion': _$EmotionTypeEnumMap[instance.emotion],
      'days': instance.days,
      'comments': instance.comments,
    };

const _$SymptomTypeEnumMap = {
  SymptomType.visionProblem: 'visionProblem',
  SymptomType.muscleWeakness: 'muscleWeakness',
  SymptomType.confusion: 'confusion',
  SymptomType.speakProblem: 'speakProblem',
  SymptomType.muscleTremor: 'muscleTremor',
  SymptomType.other: 'other',
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
