// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Symptom _$$_SymptomFromJson(Map<String, dynamic> json) => _$_Symptom(
      id: json['id'] as int?,
      symptomType: $enumDecode(_$SymptomTypeEnumMap, json['symptomType']),
      userId: json['userId'],
      rating: json['rating'] as num,
      reportedAt: DateTime.parse(json['reportedAt'] as String),
      comment: json['comment'] as String?,
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

Map<String, dynamic> _$$_SymptomToJson(_$_Symptom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symptomType': _$SymptomTypeEnumMap[instance.symptomType]!,
      'userId': instance.userId,
      'rating': instance.rating,
      'reportedAt': instance.reportedAt.toIso8601String(),
      'comment': instance.comment,
      'createAt': instance.createAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

const _$SymptomTypeEnumMap = {
  SymptomType.visionProblem: 'visionProblem',
  SymptomType.muscleWeakness: 'muscleWeakness',
  SymptomType.confusion: 'confusion',
  SymptomType.speakProblem: 'speakProblem',
  SymptomType.muscleTremor: 'muscleTremor',
  SymptomType.other: 'other',
};
