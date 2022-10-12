// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Symptom _$SymptomFromJson(Map<String, dynamic> json) {
  return _Symptom.fromJson(json);
}

/// @nodoc
mixin _$Symptom {
  int? get id => throw _privateConstructorUsedError;
  SymptomType get symptomType => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  DateTime get reportedAt => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomCopyWith<Symptom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomCopyWith<$Res> {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) then) =
      _$SymptomCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      SymptomType symptomType,
      dynamic userId,
      num rating,
      DateTime reportedAt,
      String? comment,
      DateTime? createAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$SymptomCopyWithImpl<$Res> implements $SymptomCopyWith<$Res> {
  _$SymptomCopyWithImpl(this._value, this._then);

  final Symptom _value;
  // ignore: unused_field
  final $Res Function(Symptom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symptomType = freezed,
    Object? userId = freezed,
    Object? rating = freezed,
    Object? reportedAt = freezed,
    Object? comment = freezed,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symptomType: symptomType == freezed
          ? _value.symptomType
          : symptomType // ignore: cast_nullable_to_non_nullable
              as SymptomType,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      reportedAt: reportedAt == freezed
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_SymptomCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$$_SymptomCopyWith(
          _$_Symptom value, $Res Function(_$_Symptom) then) =
      __$$_SymptomCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      SymptomType symptomType,
      dynamic userId,
      num rating,
      DateTime reportedAt,
      String? comment,
      DateTime? createAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_SymptomCopyWithImpl<$Res> extends _$SymptomCopyWithImpl<$Res>
    implements _$$_SymptomCopyWith<$Res> {
  __$$_SymptomCopyWithImpl(_$_Symptom _value, $Res Function(_$_Symptom) _then)
      : super(_value, (v) => _then(v as _$_Symptom));

  @override
  _$_Symptom get _value => super._value as _$_Symptom;

  @override
  $Res call({
    Object? id = freezed,
    Object? symptomType = freezed,
    Object? userId = freezed,
    Object? rating = freezed,
    Object? reportedAt = freezed,
    Object? comment = freezed,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Symptom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symptomType: symptomType == freezed
          ? _value.symptomType
          : symptomType // ignore: cast_nullable_to_non_nullable
              as SymptomType,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      reportedAt: reportedAt == freezed
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Symptom with DiagnosticableTreeMixin implements _Symptom {
  const _$_Symptom(
      {this.id,
      required this.symptomType,
      required this.userId,
      required this.rating,
      required this.reportedAt,
      this.comment,
      this.createAt,
      this.updatedAt,
      this.deletedAt});

  factory _$_Symptom.fromJson(Map<String, dynamic> json) =>
      _$$_SymptomFromJson(json);

  @override
  final int? id;
  @override
  final SymptomType symptomType;
  @override
  final dynamic userId;
  @override
  final num rating;
  @override
  final DateTime reportedAt;
  @override
  final String? comment;
  @override
  final DateTime? createAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Symptom(id: $id, symptomType: $symptomType, userId: $userId, rating: $rating, reportedAt: $reportedAt, comment: $comment, createAt: $createAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Symptom'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('symptomType', symptomType))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('reportedAt', reportedAt))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('createAt', createAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Symptom &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.symptomType, symptomType) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.reportedAt, reportedAt) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symptomType),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(reportedAt),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_SymptomCopyWith<_$_Symptom> get copyWith =>
      __$$_SymptomCopyWithImpl<_$_Symptom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymptomToJson(this);
  }
}

abstract class _Symptom implements Symptom {
  const factory _Symptom(
      {final int? id,
      required final SymptomType symptomType,
      required final dynamic userId,
      required final num rating,
      required final DateTime reportedAt,
      final String? comment,
      final DateTime? createAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_Symptom;

  factory _Symptom.fromJson(Map<String, dynamic> json) = _$_Symptom.fromJson;

  @override
  int? get id;
  @override
  SymptomType get symptomType;
  @override
  dynamic get userId;
  @override
  num get rating;
  @override
  DateTime get reportedAt;
  @override
  String? get comment;
  @override
  DateTime? get createAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SymptomCopyWith<_$_Symptom> get copyWith =>
      throw _privateConstructorUsedError;
}
