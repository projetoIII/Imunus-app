// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Emotion _$EmotionFromJson(Map<String, dynamic> json) {
  return _Emotion.fromJson(json);
}

/// @nodoc
mixin _$Emotion {
  int? get id => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  EmotionType get emotion => throw _privateConstructorUsedError;
  DateTime? get reportedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionCopyWith<Emotion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionCopyWith<$Res> {
  factory $EmotionCopyWith(Emotion value, $Res Function(Emotion) then) =
      _$EmotionCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      dynamic userId,
      EmotionType emotion,
      DateTime? reportedAt,
      DateTime? deletedAt,
      String? comment});
}

/// @nodoc
class _$EmotionCopyWithImpl<$Res> implements $EmotionCopyWith<$Res> {
  _$EmotionCopyWithImpl(this._value, this._then);

  final Emotion _value;
  // ignore: unused_field
  final $Res Function(Emotion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? emotion = freezed,
    Object? reportedAt = freezed,
    Object? deletedAt = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emotion: emotion == freezed
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as EmotionType,
      reportedAt: reportedAt == freezed
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmotionCopyWith<$Res> implements $EmotionCopyWith<$Res> {
  factory _$$_EmotionCopyWith(
          _$_Emotion value, $Res Function(_$_Emotion) then) =
      __$$_EmotionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      dynamic userId,
      EmotionType emotion,
      DateTime? reportedAt,
      DateTime? deletedAt,
      String? comment});
}

/// @nodoc
class __$$_EmotionCopyWithImpl<$Res> extends _$EmotionCopyWithImpl<$Res>
    implements _$$_EmotionCopyWith<$Res> {
  __$$_EmotionCopyWithImpl(_$_Emotion _value, $Res Function(_$_Emotion) _then)
      : super(_value, (v) => _then(v as _$_Emotion));

  @override
  _$_Emotion get _value => super._value as _$_Emotion;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? emotion = freezed,
    Object? reportedAt = freezed,
    Object? deletedAt = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_Emotion(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emotion: emotion == freezed
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as EmotionType,
      reportedAt: reportedAt == freezed
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Emotion with DiagnosticableTreeMixin implements _Emotion {
  const _$_Emotion(
      {this.id,
      required this.userId,
      required this.emotion,
      this.reportedAt,
      this.deletedAt,
      this.comment});

  factory _$_Emotion.fromJson(Map<String, dynamic> json) =>
      _$$_EmotionFromJson(json);

  @override
  final int? id;
  @override
  final dynamic userId;
  @override
  final EmotionType emotion;
  @override
  final DateTime? reportedAt;
  @override
  final DateTime? deletedAt;
  @override
  final String? comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Emotion(id: $id, userId: $userId, emotion: $emotion, reportedAt: $reportedAt, deletedAt: $deletedAt, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Emotion'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('emotion', emotion))
      ..add(DiagnosticsProperty('reportedAt', reportedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emotion &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.emotion, emotion) &&
            const DeepCollectionEquality()
                .equals(other.reportedAt, reportedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(emotion),
      const DeepCollectionEquality().hash(reportedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$$_EmotionCopyWith<_$_Emotion> get copyWith =>
      __$$_EmotionCopyWithImpl<_$_Emotion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmotionToJson(this);
  }
}

abstract class _Emotion implements Emotion {
  const factory _Emotion(
      {final int? id,
      required final dynamic userId,
      required final EmotionType emotion,
      final DateTime? reportedAt,
      final DateTime? deletedAt,
      final String? comment}) = _$_Emotion;

  factory _Emotion.fromJson(Map<String, dynamic> json) = _$_Emotion.fromJson;

  @override
  int? get id;
  @override
  dynamic get userId;
  @override
  EmotionType get emotion;
  @override
  DateTime? get reportedAt;
  @override
  DateTime? get deletedAt;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_EmotionCopyWith<_$_Emotion> get copyWith =>
      throw _privateConstructorUsedError;
}
