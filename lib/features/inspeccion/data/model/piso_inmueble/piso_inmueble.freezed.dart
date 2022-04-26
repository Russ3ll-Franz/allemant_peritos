// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'piso_inmueble.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PisoInmueble _$PisoInmuebleFromJson(Map<String, dynamic> json) {
  return _PisoInmueble.fromJson(json);
}

/// @nodoc
class _$PisoInmuebleTearOff {
  const _$PisoInmuebleTearOff();

  _PisoInmueble call(
      {@JsonKey(name: 'pisos_id') String? pisosId,
      @JsonKey(name: 'pisos_nombre') String? pisosNombre,
      @JsonKey(name: 'pisos_estado') String? pisosEstado}) {
    return _PisoInmueble(
      pisosId: pisosId,
      pisosNombre: pisosNombre,
      pisosEstado: pisosEstado,
    );
  }

  PisoInmueble fromJson(Map<String, Object?> json) {
    return PisoInmueble.fromJson(json);
  }
}

/// @nodoc
const $PisoInmueble = _$PisoInmuebleTearOff();

/// @nodoc
mixin _$PisoInmueble {
  @JsonKey(name: 'pisos_id')
  String? get pisosId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pisos_nombre')
  String? get pisosNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'pisos_estado')
  String? get pisosEstado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PisoInmuebleCopyWith<PisoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PisoInmuebleCopyWith<$Res> {
  factory $PisoInmuebleCopyWith(
          PisoInmueble value, $Res Function(PisoInmueble) then) =
      _$PisoInmuebleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pisos_id') String? pisosId,
      @JsonKey(name: 'pisos_nombre') String? pisosNombre,
      @JsonKey(name: 'pisos_estado') String? pisosEstado});
}

/// @nodoc
class _$PisoInmuebleCopyWithImpl<$Res> implements $PisoInmuebleCopyWith<$Res> {
  _$PisoInmuebleCopyWithImpl(this._value, this._then);

  final PisoInmueble _value;
  // ignore: unused_field
  final $Res Function(PisoInmueble) _then;

  @override
  $Res call({
    Object? pisosId = freezed,
    Object? pisosNombre = freezed,
    Object? pisosEstado = freezed,
  }) {
    return _then(_value.copyWith(
      pisosId: pisosId == freezed
          ? _value.pisosId
          : pisosId // ignore: cast_nullable_to_non_nullable
              as String?,
      pisosNombre: pisosNombre == freezed
          ? _value.pisosNombre
          : pisosNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      pisosEstado: pisosEstado == freezed
          ? _value.pisosEstado
          : pisosEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PisoInmuebleCopyWith<$Res>
    implements $PisoInmuebleCopyWith<$Res> {
  factory _$PisoInmuebleCopyWith(
          _PisoInmueble value, $Res Function(_PisoInmueble) then) =
      __$PisoInmuebleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pisos_id') String? pisosId,
      @JsonKey(name: 'pisos_nombre') String? pisosNombre,
      @JsonKey(name: 'pisos_estado') String? pisosEstado});
}

/// @nodoc
class __$PisoInmuebleCopyWithImpl<$Res> extends _$PisoInmuebleCopyWithImpl<$Res>
    implements _$PisoInmuebleCopyWith<$Res> {
  __$PisoInmuebleCopyWithImpl(
      _PisoInmueble _value, $Res Function(_PisoInmueble) _then)
      : super(_value, (v) => _then(v as _PisoInmueble));

  @override
  _PisoInmueble get _value => super._value as _PisoInmueble;

  @override
  $Res call({
    Object? pisosId = freezed,
    Object? pisosNombre = freezed,
    Object? pisosEstado = freezed,
  }) {
    return _then(_PisoInmueble(
      pisosId: pisosId == freezed
          ? _value.pisosId
          : pisosId // ignore: cast_nullable_to_non_nullable
              as String?,
      pisosNombre: pisosNombre == freezed
          ? _value.pisosNombre
          : pisosNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      pisosEstado: pisosEstado == freezed
          ? _value.pisosEstado
          : pisosEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PisoInmueble implements _PisoInmueble {
  _$_PisoInmueble(
      {@JsonKey(name: 'pisos_id') this.pisosId,
      @JsonKey(name: 'pisos_nombre') this.pisosNombre,
      @JsonKey(name: 'pisos_estado') this.pisosEstado});

  factory _$_PisoInmueble.fromJson(Map<String, dynamic> json) =>
      _$$_PisoInmuebleFromJson(json);

  @override
  @JsonKey(name: 'pisos_id')
  final String? pisosId;
  @override
  @JsonKey(name: 'pisos_nombre')
  final String? pisosNombre;
  @override
  @JsonKey(name: 'pisos_estado')
  final String? pisosEstado;

  @override
  String toString() {
    return 'PisoInmueble(pisosId: $pisosId, pisosNombre: $pisosNombre, pisosEstado: $pisosEstado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PisoInmueble &&
            const DeepCollectionEquality().equals(other.pisosId, pisosId) &&
            const DeepCollectionEquality()
                .equals(other.pisosNombre, pisosNombre) &&
            const DeepCollectionEquality()
                .equals(other.pisosEstado, pisosEstado));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pisosId),
      const DeepCollectionEquality().hash(pisosNombre),
      const DeepCollectionEquality().hash(pisosEstado));

  @JsonKey(ignore: true)
  @override
  _$PisoInmuebleCopyWith<_PisoInmueble> get copyWith =>
      __$PisoInmuebleCopyWithImpl<_PisoInmueble>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PisoInmuebleToJson(this);
  }
}

abstract class _PisoInmueble implements PisoInmueble {
  factory _PisoInmueble(
      {@JsonKey(name: 'pisos_id') String? pisosId,
      @JsonKey(name: 'pisos_nombre') String? pisosNombre,
      @JsonKey(name: 'pisos_estado') String? pisosEstado}) = _$_PisoInmueble;

  factory _PisoInmueble.fromJson(Map<String, dynamic> json) =
      _$_PisoInmueble.fromJson;

  @override
  @JsonKey(name: 'pisos_id')
  String? get pisosId;
  @override
  @JsonKey(name: 'pisos_nombre')
  String? get pisosNombre;
  @override
  @JsonKey(name: 'pisos_estado')
  String? get pisosEstado;
  @override
  @JsonKey(ignore: true)
  _$PisoInmuebleCopyWith<_PisoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}
