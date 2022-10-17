// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emotion_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmotionReport _$EmotionReportFromJson(Map<String, dynamic> json) {
  return _EmotionReport.fromJson(json);
}

/// @nodoc
mixin _$EmotionReport {
  int? get id => throw _privateConstructorUsedError;
  List<Emotion> get emotions => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get commentAnalysis => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionReportCopyWith<EmotionReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionReportCopyWith<$Res> {
  factory $EmotionReportCopyWith(
          EmotionReport value, $Res Function(EmotionReport) then) =
      _$EmotionReportCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      List<Emotion> emotions,
      dynamic userId,
      String? comment,
      String? commentAnalysis,
      DateTime? createAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$EmotionReportCopyWithImpl<$Res>
    implements $EmotionReportCopyWith<$Res> {
  _$EmotionReportCopyWithImpl(this._value, this._then);

  final EmotionReport _value;
  // ignore: unused_field
  final $Res Function(EmotionReport) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? emotions = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? commentAnalysis = freezed,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      emotions: emotions == freezed
          ? _value.emotions
          : emotions // ignore: cast_nullable_to_non_nullable
              as List<Emotion>,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentAnalysis: commentAnalysis == freezed
          ? _value.commentAnalysis
          : commentAnalysis // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EmotionReportCopyWith<$Res>
    implements $EmotionReportCopyWith<$Res> {
  factory _$$_EmotionReportCopyWith(
          _$_EmotionReport value, $Res Function(_$_EmotionReport) then) =
      __$$_EmotionReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      List<Emotion> emotions,
      dynamic userId,
      String? comment,
      String? commentAnalysis,
      DateTime? createAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_EmotionReportCopyWithImpl<$Res>
    extends _$EmotionReportCopyWithImpl<$Res>
    implements _$$_EmotionReportCopyWith<$Res> {
  __$$_EmotionReportCopyWithImpl(
      _$_EmotionReport _value, $Res Function(_$_EmotionReport) _then)
      : super(_value, (v) => _then(v as _$_EmotionReport));

  @override
  _$_EmotionReport get _value => super._value as _$_EmotionReport;

  @override
  $Res call({
    Object? id = freezed,
    Object? emotions = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? commentAnalysis = freezed,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_EmotionReport(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      emotions: emotions == freezed
          ? _value._emotions
          : emotions // ignore: cast_nullable_to_non_nullable
              as List<Emotion>,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentAnalysis: commentAnalysis == freezed
          ? _value.commentAnalysis
          : commentAnalysis // ignore: cast_nullable_to_non_nullable
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
class _$_EmotionReport with DiagnosticableTreeMixin implements _EmotionReport {
  const _$_EmotionReport(
      {this.id,
      required final List<Emotion> emotions,
      required this.userId,
      this.comment,
      this.commentAnalysis,
      this.createAt,
      this.updatedAt,
      this.deletedAt})
      : _emotions = emotions;

  factory _$_EmotionReport.fromJson(Map<String, dynamic> json) =>
      _$$_EmotionReportFromJson(json);

  @override
  final int? id;
  final List<Emotion> _emotions;
  @override
  List<Emotion> get emotions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emotions);
  }

  @override
  final dynamic userId;
  @override
  final String? comment;
  @override
  final String? commentAnalysis;
  @override
  final DateTime? createAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmotionReport(id: $id, emotions: $emotions, userId: $userId, comment: $comment, commentAnalysis: $commentAnalysis, createAt: $createAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmotionReport'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('emotions', emotions))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('commentAnalysis', commentAnalysis))
      ..add(DiagnosticsProperty('createAt', createAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmotionReport &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._emotions, _emotions) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality()
                .equals(other.commentAnalysis, commentAnalysis) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_emotions),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(commentAnalysis),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_EmotionReportCopyWith<_$_EmotionReport> get copyWith =>
      __$$_EmotionReportCopyWithImpl<_$_EmotionReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmotionReportToJson(this);
  }
}

abstract class _EmotionReport implements EmotionReport {
  const factory _EmotionReport(
      {final int? id,
      required final List<Emotion> emotions,
      required final dynamic userId,
      final String? comment,
      final String? commentAnalysis,
      final DateTime? createAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_EmotionReport;

  factory _EmotionReport.fromJson(Map<String, dynamic> json) =
      _$_EmotionReport.fromJson;

  @override
  int? get id;
  @override
  List<Emotion> get emotions;
  @override
  dynamic get userId;
  @override
  String? get comment;
  @override
  String? get commentAnalysis;
  @override
  DateTime? get createAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmotionReportCopyWith<_$_EmotionReport> get copyWith =>
      throw _privateConstructorUsedError;
}
