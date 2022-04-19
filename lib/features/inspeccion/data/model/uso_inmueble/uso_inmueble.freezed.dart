// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'uso_inmueble.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsoInmueble _$UsoInmuebleFromJson(Map<String, dynamic> json) {
  return _UsoInmueble.fromJson(json);
}

/// @nodoc
class _$UsoInmuebleTearOff {
  const _$UsoInmuebleTearOff();

  _UsoInmueble call(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado}) {
    return _UsoInmueble(
      usoId: usoId,
      usoNombre: usoNombre,
      usoEstado: usoEstado,
    );
  }

  UsoInmueble fromJson(Map<String, Object?> json) {
    return UsoInmueble.fromJson(json);
  }
}

/// @nodoc
const $UsoInmueble = _$UsoInmuebleTearOff();

/// @nodoc
mixin _$UsoInmueble {
  @JsonKey(name: 'uso_id')
  String? get usoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'uso_nombre')
  String? get usoNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'uso_estado')
  String? get usoEstado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsoInmuebleCopyWith<UsoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsoInmuebleCopyWith<$Res> {
  factory $UsoInmuebleCopyWith(
          UsoInmueble value, $Res Function(UsoInmueble) then) =
      _$UsoInmuebleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado});
}

/// @nodoc
class _$UsoInmuebleCopyWithImpl<$Res> implements $UsoInmuebleCopyWith<$Res> {
  _$UsoInmuebleCopyWithImpl(this._value, this._then);

  final UsoInmueble _value;
  // ignore: unused_field
  final $Res Function(UsoInmueble) _then;

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
abstract class _$UsoInmuebleCopyWith<$Res>
    implements $UsoInmuebleCopyWith<$Res> {
  factory _$UsoInmuebleCopyWith(
          _UsoInmueble value, $Res Function(_UsoInmueble) then) =
      __$UsoInmuebleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado});
}

/// @nodoc
class __$UsoInmuebleCopyWithImpl<$Res> extends _$UsoInmuebleCopyWithImpl<$Res>
    implements _$UsoInmuebleCopyWith<$Res> {
  __$UsoInmuebleCopyWithImpl(
      _UsoInmueble _value, $Res Function(_UsoInmueble) _then)
      : super(_value, (v) => _then(v as _UsoInmueble));

  @override
  _UsoInmueble get _value => super._value as _UsoInmueble;

  @override
  $Res call({
    Object? usoId = freezed,
    Object? usoNombre = freezed,
    Object? usoEstado = freezed,
  }) {
    return _then(_UsoInmueble(
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
class _$_UsoInmueble implements _UsoInmueble {
  _$_UsoInmueble(
      {@JsonKey(name: 'uso_id') this.usoId,
      @JsonKey(name: 'uso_nombre') this.usoNombre,
      @JsonKey(name: 'uso_estado') this.usoEstado});

  factory _$_UsoInmueble.fromJson(Map<String, dynamic> json) =>
      _$$_UsoInmuebleFromJson(json);

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
    return 'UsoInmueble(usoId: $usoId, usoNombre: $usoNombre, usoEstado: $usoEstado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsoInmueble &&
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
  _$UsoInmuebleCopyWith<_UsoInmueble> get copyWith =>
      __$UsoInmuebleCopyWithImpl<_UsoInmueble>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsoInmuebleToJson(this);
  }
}

abstract class _UsoInmueble implements UsoInmueble {
  factory _UsoInmueble(
      {@JsonKey(name: 'uso_id') String? usoId,
      @JsonKey(name: 'uso_nombre') String? usoNombre,
      @JsonKey(name: 'uso_estado') String? usoEstado}) = _$_UsoInmueble;

  factory _UsoInmueble.fromJson(Map<String, dynamic> json) =
      _$_UsoInmueble.fromJson;

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
  _$UsoInmuebleCopyWith<_UsoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}
