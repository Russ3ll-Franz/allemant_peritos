// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'muro_inmueble.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MuroInmueble _$MuroInmuebleFromJson(Map<String, dynamic> json) {
  return _MuroInmueble.fromJson(json);
}

/// @nodoc
class _$MuroInmuebleTearOff {
  const _$MuroInmuebleTearOff();

  _MuroInmueble call(
      {@JsonKey(name: 'muro_id') String? muroId,
      @JsonKey(name: 'muro_nombre') String? muroNombre,
      @JsonKey(name: 'muro_estado') String? muroEstado}) {
    return _MuroInmueble(
      muroId: muroId,
      muroNombre: muroNombre,
      muroEstado: muroEstado,
    );
  }

  MuroInmueble fromJson(Map<String, Object?> json) {
    return MuroInmueble.fromJson(json);
  }
}

/// @nodoc
const $MuroInmueble = _$MuroInmuebleTearOff();

/// @nodoc
mixin _$MuroInmueble {
  @JsonKey(name: 'muro_id')
  String? get muroId => throw _privateConstructorUsedError;
  @JsonKey(name: 'muro_nombre')
  String? get muroNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'muro_estado')
  String? get muroEstado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuroInmuebleCopyWith<MuroInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuroInmuebleCopyWith<$Res> {
  factory $MuroInmuebleCopyWith(
          MuroInmueble value, $Res Function(MuroInmueble) then) =
      _$MuroInmuebleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'muro_id') String? muroId,
      @JsonKey(name: 'muro_nombre') String? muroNombre,
      @JsonKey(name: 'muro_estado') String? muroEstado});
}

/// @nodoc
class _$MuroInmuebleCopyWithImpl<$Res> implements $MuroInmuebleCopyWith<$Res> {
  _$MuroInmuebleCopyWithImpl(this._value, this._then);

  final MuroInmueble _value;
  // ignore: unused_field
  final $Res Function(MuroInmueble) _then;

  @override
  $Res call({
    Object? muroId = freezed,
    Object? muroNombre = freezed,
    Object? muroEstado = freezed,
  }) {
    return _then(_value.copyWith(
      muroId: muroId == freezed
          ? _value.muroId
          : muroId // ignore: cast_nullable_to_non_nullable
              as String?,
      muroNombre: muroNombre == freezed
          ? _value.muroNombre
          : muroNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      muroEstado: muroEstado == freezed
          ? _value.muroEstado
          : muroEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MuroInmuebleCopyWith<$Res>
    implements $MuroInmuebleCopyWith<$Res> {
  factory _$MuroInmuebleCopyWith(
          _MuroInmueble value, $Res Function(_MuroInmueble) then) =
      __$MuroInmuebleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'muro_id') String? muroId,
      @JsonKey(name: 'muro_nombre') String? muroNombre,
      @JsonKey(name: 'muro_estado') String? muroEstado});
}

/// @nodoc
class __$MuroInmuebleCopyWithImpl<$Res> extends _$MuroInmuebleCopyWithImpl<$Res>
    implements _$MuroInmuebleCopyWith<$Res> {
  __$MuroInmuebleCopyWithImpl(
      _MuroInmueble _value, $Res Function(_MuroInmueble) _then)
      : super(_value, (v) => _then(v as _MuroInmueble));

  @override
  _MuroInmueble get _value => super._value as _MuroInmueble;

  @override
  $Res call({
    Object? muroId = freezed,
    Object? muroNombre = freezed,
    Object? muroEstado = freezed,
  }) {
    return _then(_MuroInmueble(
      muroId: muroId == freezed
          ? _value.muroId
          : muroId // ignore: cast_nullable_to_non_nullable
              as String?,
      muroNombre: muroNombre == freezed
          ? _value.muroNombre
          : muroNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      muroEstado: muroEstado == freezed
          ? _value.muroEstado
          : muroEstado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MuroInmueble implements _MuroInmueble {
  _$_MuroInmueble(
      {@JsonKey(name: 'muro_id') this.muroId,
      @JsonKey(name: 'muro_nombre') this.muroNombre,
      @JsonKey(name: 'muro_estado') this.muroEstado});

  factory _$_MuroInmueble.fromJson(Map<String, dynamic> json) =>
      _$$_MuroInmuebleFromJson(json);

  @override
  @JsonKey(name: 'muro_id')
  final String? muroId;
  @override
  @JsonKey(name: 'muro_nombre')
  final String? muroNombre;
  @override
  @JsonKey(name: 'muro_estado')
  final String? muroEstado;

  @override
  String toString() {
    return 'MuroInmueble(muroId: $muroId, muroNombre: $muroNombre, muroEstado: $muroEstado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MuroInmueble &&
            const DeepCollectionEquality().equals(other.muroId, muroId) &&
            const DeepCollectionEquality()
                .equals(other.muroNombre, muroNombre) &&
            const DeepCollectionEquality()
                .equals(other.muroEstado, muroEstado));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(muroId),
      const DeepCollectionEquality().hash(muroNombre),
      const DeepCollectionEquality().hash(muroEstado));

  @JsonKey(ignore: true)
  @override
  _$MuroInmuebleCopyWith<_MuroInmueble> get copyWith =>
      __$MuroInmuebleCopyWithImpl<_MuroInmueble>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MuroInmuebleToJson(this);
  }
}

abstract class _MuroInmueble implements MuroInmueble {
  factory _MuroInmueble(
      {@JsonKey(name: 'muro_id') String? muroId,
      @JsonKey(name: 'muro_nombre') String? muroNombre,
      @JsonKey(name: 'muro_estado') String? muroEstado}) = _$_MuroInmueble;

  factory _MuroInmueble.fromJson(Map<String, dynamic> json) =
      _$_MuroInmueble.fromJson;

  @override
  @JsonKey(name: 'muro_id')
  String? get muroId;
  @override
  @JsonKey(name: 'muro_nombre')
  String? get muroNombre;
  @override
  @JsonKey(name: 'muro_estado')
  String? get muroEstado;
  @override
  @JsonKey(ignore: true)
  _$MuroInmuebleCopyWith<_MuroInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}
