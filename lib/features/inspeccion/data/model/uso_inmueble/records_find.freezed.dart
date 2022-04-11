// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'records_find.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordsFind _$RecordsFindFromJson(Map<String, dynamic> json) {
  return _RecordsFind.fromJson(json);
}

/// @nodoc
class _$RecordsFindTearOff {
  const _$RecordsFindTearOff();

  _RecordsFind call(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado}) {
    return _RecordsFind(
      usoId: usoId,
      usoNombre: usoNombre,
      usoEstado: usoEstado,
    );
  }

  RecordsFind fromJson(Map<String, Object?> json) {
    return RecordsFind.fromJson(json);
  }
}

/// @nodoc
const $RecordsFind = _$RecordsFindTearOff();

/// @nodoc
mixin _$RecordsFind {
  @JsonKey(name: 'uso_id')
  String? get usoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'uso_nombre')
  String? get usoNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'uso_estado')
  String? get usoEstado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsFindCopyWith<RecordsFind> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsFindCopyWith<$Res> {
  factory $RecordsFindCopyWith(
          RecordsFind value, $Res Function(RecordsFind) then) =
      _$RecordsFindCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado});
}

/// @nodoc
class _$RecordsFindCopyWithImpl<$Res> implements $RecordsFindCopyWith<$Res> {
  _$RecordsFindCopyWithImpl(this._value, this._then);

  final RecordsFind _value;
  // ignore: unused_field
  final $Res Function(RecordsFind) _then;

  @override
  $Res call({
    Object? usoId = freezed,
    Object? usoNombre = freezed,
    Object? usoEstado = freezed,
  }) {
    return _then(_value.copyWith(
      usoId: usoId == freezed
          ? _value.usoId
          : usoId // ignore: cast_nullable_to_non_nullable
              as String?,
      usoNombre: usoNombre == freezed
          ? _value.usoNombre
          : usoNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      usoEstado: usoEstado == freezed
          ? _value.usoEstado
          : usoEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RecordsFindCopyWith<$Res>
    implements $RecordsFindCopyWith<$Res> {
  factory _$RecordsFindCopyWith(
          _RecordsFind value, $Res Function(_RecordsFind) then) =
      __$RecordsFindCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado});
}

/// @nodoc
class __$RecordsFindCopyWithImpl<$Res> extends _$RecordsFindCopyWithImpl<$Res>
    implements _$RecordsFindCopyWith<$Res> {
  __$RecordsFindCopyWithImpl(
      _RecordsFind _value, $Res Function(_RecordsFind) _then)
      : super(_value, (v) => _then(v as _RecordsFind));

  @override
  _RecordsFind get _value => super._value as _RecordsFind;

  @override
  $Res call({
    Object? usoId = freezed,
    Object? usoNombre = freezed,
    Object? usoEstado = freezed,
  }) {
    return _then(_RecordsFind(
      usoId: usoId == freezed
          ? _value.usoId
          : usoId // ignore: cast_nullable_to_non_nullable
              as String?,
      usoNombre: usoNombre == freezed
          ? _value.usoNombre
          : usoNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      usoEstado: usoEstado == freezed
          ? _value.usoEstado
          : usoEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordsFind implements _RecordsFind {
  _$_RecordsFind(
      {@JsonKey(name: 'uso_id') this.usoId,
      @JsonKey(name: 'uso_nombre') this.usoNombre,
      @JsonKey(name: 'uso_estado') this.usoEstado});

  factory _$_RecordsFind.fromJson(Map<String, dynamic> json) =>
      _$$_RecordsFindFromJson(json);

  @override
  @JsonKey(name: 'uso_id')
  final String? usoId;
  @override
  @JsonKey(name: 'uso_nombre')
  final String? usoNombre;
  @override
  @JsonKey(name: 'uso_estado')
  final String? usoEstado;

  @override
  String toString() {
    return 'RecordsFind(usoId: $usoId, usoNombre: $usoNombre, usoEstado: $usoEstado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordsFind &&
            const DeepCollectionEquality().equals(other.usoId, usoId) &&
            const DeepCollectionEquality().equals(other.usoNombre, usoNombre) &&
            const DeepCollectionEquality().equals(other.usoEstado, usoEstado));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(usoId),
      const DeepCollectionEquality().hash(usoNombre),
      const DeepCollectionEquality().hash(usoEstado));

  @JsonKey(ignore: true)
  @override
  _$RecordsFindCopyWith<_RecordsFind> get copyWith =>
      __$RecordsFindCopyWithImpl<_RecordsFind>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordsFindToJson(this);
  }
}

abstract class _RecordsFind implements RecordsFind {
  factory _RecordsFind(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado}) = _$_RecordsFind;

  factory _RecordsFind.fromJson(Map<String, dynamic> json) =
      _$_RecordsFind.fromJson;

  @override
  @JsonKey(name: 'uso_id')
  String? get usoId;
  @override
  @JsonKey(name: 'uso_nombre')
  String? get usoNombre;
  @override
  @JsonKey(name: 'uso_estado')
  String? get usoEstado;
  @override
  @JsonKey(ignore: true)
  _$RecordsFindCopyWith<_RecordsFind> get copyWith =>
      throw _privateConstructorUsedError;
}
