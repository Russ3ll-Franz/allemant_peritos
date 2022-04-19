// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'techo_inmueble.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TechoInmueble _$TechoInmuebleFromJson(Map<String, dynamic> json) {
  return _TechoInmueble.fromJson(json);
}

/// @nodoc
class _$TechoInmuebleTearOff {
  const _$TechoInmuebleTearOff();

  _TechoInmueble call(
      {@JsonKey(name: 'techo_id') String? techoId,
      @JsonKey(name: 'techo_nombre') String? techoNombre,
      @JsonKey(name: 'techo_estado') String? techoEstado}) {
    return _TechoInmueble(
      techoId: techoId,
      techoNombre: techoNombre,
      techoEstado: techoEstado,
    );
  }

  TechoInmueble fromJson(Map<String, Object?> json) {
    return TechoInmueble.fromJson(json);
  }
}

/// @nodoc
const $TechoInmueble = _$TechoInmuebleTearOff();

/// @nodoc
mixin _$TechoInmueble {
  @JsonKey(name: 'techo_id')
  String? get techoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'techo_nombre')
  String? get techoNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'techo_estado')
  String? get techoEstado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechoInmuebleCopyWith<TechoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechoInmuebleCopyWith<$Res> {
  factory $TechoInmuebleCopyWith(
          TechoInmueble value, $Res Function(TechoInmueble) then) =
      _$TechoInmuebleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'techo_id') String? techoId,
      @JsonKey(name: 'techo_nombre') String? techoNombre,
      @JsonKey(name: 'techo_estado') String? techoEstado});
}

/// @nodoc
class _$TechoInmuebleCopyWithImpl<$Res>
    implements $TechoInmuebleCopyWith<$Res> {
  _$TechoInmuebleCopyWithImpl(this._value, this._then);

  final TechoInmueble _value;
  // ignore: unused_field
  final $Res Function(TechoInmueble) _then;

  @override
  $Res call({
    Object? techoId = freezed,
    Object? techoNombre = freezed,
    Object? techoEstado = freezed,
  }) {
    return _then(_value.copyWith(
      techoId: techoId == freezed
          ? _value.techoId
          : techoId // ignore: cast_nullable_to_non_nullable
              as String?,
      techoNombre: techoNombre == freezed
          ? _value.techoNombre
          : techoNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      techoEstado: techoEstado == freezed
          ? _value.techoEstado
          : techoEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TechoInmuebleCopyWith<$Res>
    implements $TechoInmuebleCopyWith<$Res> {
  factory _$TechoInmuebleCopyWith(
          _TechoInmueble value, $Res Function(_TechoInmueble) then) =
      __$TechoInmuebleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'techo_id') String? techoId,
      @JsonKey(name: 'techo_nombre') String? techoNombre,
      @JsonKey(name: 'techo_estado') String? techoEstado});
}

/// @nodoc
class __$TechoInmuebleCopyWithImpl<$Res>
    extends _$TechoInmuebleCopyWithImpl<$Res>
    implements _$TechoInmuebleCopyWith<$Res> {
  __$TechoInmuebleCopyWithImpl(
      _TechoInmueble _value, $Res Function(_TechoInmueble) _then)
      : super(_value, (v) => _then(v as _TechoInmueble));

  @override
  _TechoInmueble get _value => super._value as _TechoInmueble;

  @override
  $Res call({
    Object? techoId = freezed,
    Object? techoNombre = freezed,
    Object? techoEstado = freezed,
  }) {
    return _then(_TechoInmueble(
      techoId: techoId == freezed
          ? _value.techoId
          : techoId // ignore: cast_nullable_to_non_nullable
              as String?,
      techoNombre: techoNombre == freezed
          ? _value.techoNombre
          : techoNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      techoEstado: techoEstado == freezed
          ? _value.techoEstado
          : techoEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TechoInmueble implements _TechoInmueble {
  _$_TechoInmueble(
      {@JsonKey(name: 'techo_id') this.techoId,
      @JsonKey(name: 'techo_nombre') this.techoNombre,
      @JsonKey(name: 'techo_estado') this.techoEstado});

  factory _$_TechoInmueble.fromJson(Map<String, dynamic> json) =>
      _$$_TechoInmuebleFromJson(json);

  @override
  @JsonKey(name: 'techo_id')
  final String? techoId;
  @override
  @JsonKey(name: 'techo_nombre')
  final String? techoNombre;
  @override
  @JsonKey(name: 'techo_estado')
  final String? techoEstado;

  @override
  String toString() {
    return 'TechoInmueble(techoId: $techoId, techoNombre: $techoNombre, techoEstado: $techoEstado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TechoInmueble &&
            const DeepCollectionEquality().equals(other.techoId, techoId) &&
            const DeepCollectionEquality()
                .equals(other.techoNombre, techoNombre) &&
            const DeepCollectionEquality()
                .equals(other.techoEstado, techoEstado));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(techoId),
      const DeepCollectionEquality().hash(techoNombre),
      const DeepCollectionEquality().hash(techoEstado));

  @JsonKey(ignore: true)
  @override
  _$TechoInmuebleCopyWith<_TechoInmueble> get copyWith =>
      __$TechoInmuebleCopyWithImpl<_TechoInmueble>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechoInmuebleToJson(this);
  }
}

abstract class _TechoInmueble implements TechoInmueble {
  factory _TechoInmueble(
      {@JsonKey(name: 'techo_id') String? techoId,
      @JsonKey(name: 'techo_nombre') String? techoNombre,
      @JsonKey(name: 'techo_estado') String? techoEstado}) = _$_TechoInmueble;

  factory _TechoInmueble.fromJson(Map<String, dynamic> json) =
      _$_TechoInmueble.fromJson;

  @override
  @JsonKey(name: 'techo_id')
  String? get techoId;
  @override
  @JsonKey(name: 'techo_nombre')
  String? get techoNombre;
  @override
  @JsonKey(name: 'techo_estado')
  String? get techoEstado;
  @override
  @JsonKey(ignore: true)
  _$TechoInmuebleCopyWith<_TechoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}
