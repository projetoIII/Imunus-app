// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  int? get id => throw _privateConstructorUsedError;
  SymptomType? get symptom => throw _privateConstructorUsedError;
  EmotionType? get emotion => throw _privateConstructorUsedError;
  List<int> get days => throw _privateConstructorUsedError;
  List<String>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      SymptomType? symptom,
      EmotionType? emotion,
      List<int> days,
      List<String>? comments});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res> implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  final Report _value;
  // ignore: unused_field
  final $Res Function(Report) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symptom = freezed,
    Object? emotion = freezed,
    Object? days = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symptom: symptom == freezed
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as SymptomType?,
      emotion: emotion == freezed
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as EmotionType?,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      SymptomType? symptom,
      EmotionType? emotion,
      List<int> days,
      List<String>? comments});
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res> extends _$ReportCopyWithImpl<$Res>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, (v) => _then(v as _$_Report));

  @override
  _$_Report get _value => super._value as _$_Report;

  @override
  $Res call({
    Object? id = freezed,
    Object? symptom = freezed,
    Object? emotion = freezed,
    Object? days = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$_Report(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symptom: symptom == freezed
          ? _value.symptom
          : symptom // ignore: cast_nullable_to_non_nullable
              as SymptomType?,
      emotion: emotion == freezed
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as EmotionType?,
      days: days == freezed
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>,
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Report with DiagnosticableTreeMixin implements _Report {
  const _$_Report(
      {this.id,
      this.symptom,
      this.emotion,
      required final List<int> days,
      final List<String>? comments})
      : _days = days,
        _comments = comments;

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  @override
  final int? id;
  @override
  final SymptomType? symptom;
  @override
  final EmotionType? emotion;
  final List<int> _days;
  @override
  List<int> get days {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<String>? _comments;
  @override
  List<String>? get comments {
    final value = _comments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Report(id: $id, symptom: $symptom, emotion: $emotion, days: $days, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Report'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('symptom', symptom))
      ..add(DiagnosticsProperty('emotion', emotion))
      ..add(DiagnosticsProperty('days', days))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symptom, symptom) &&
            const DeepCollectionEquality().equals(other.emotion, emotion) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symptom),
      const DeepCollectionEquality().hash(emotion),
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(this);
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {final int? id,
      final SymptomType? symptom,
      final EmotionType? emotion,
      required final List<int> days,
      final List<String>? comments}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  int? get id;
  @override
  SymptomType? get symptom;
  @override
  EmotionType? get emotion;
  @override
  List<int> get days;
  @override
  List<String>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}
