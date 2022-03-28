// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coordinacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coordinacion _$CoordinacionFromJson(Map<String, dynamic> json) {
  return _Coordinacion.fromJson(json);
}

/// @nodoc
class _$CoordinacionTearOff {
  const _$CoordinacionTearOff();

  _Coordinacion call(
      {@JsonKey(name: 'records_find') required List<RecordsFind> recordsFind}) {
    return _Coordinacion(
      recordsFind: recordsFind,
    );
  }

  Coordinacion fromJson(Map<String, Object?> json) {
    return Coordinacion.fromJson(json);
  }
}

/// @nodoc
const $Coordinacion = _$CoordinacionTearOff();

/// @nodoc
mixin _$Coordinacion {
  @JsonKey(name: 'records_find')
  List<RecordsFind> get recordsFind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinacionCopyWith<Coordinacion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinacionCopyWith<$Res> {
  factory $CoordinacionCopyWith(
          Coordinacion value, $Res Function(Coordinacion) then) =
      _$CoordinacionCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'records_find') List<RecordsFind> recordsFind});
}

/// @nodoc
class _$CoordinacionCopyWithImpl<$Res> implements $CoordinacionCopyWith<$Res> {
  _$CoordinacionCopyWithImpl(this._value, this._then);

  final Coordinacion _value;
  // ignore: unused_field
  final $Res Function(Coordinacion) _then;

  @override
  $Res call({
    Object? recordsFind = freezed,
  }) {
    return _then(_value.copyWith(
      recordsFind: recordsFind == freezed
          ? _value.recordsFind
          : recordsFind // ignore: cast_nullable_to_non_nullable
              as List<RecordsFind>,
    ));
  }
}

/// @nodoc
abstract class _$CoordinacionCopyWith<$Res>
    implements $CoordinacionCopyWith<$Res> {
  factory _$CoordinacionCopyWith(
          _Coordinacion value, $Res Function(_Coordinacion) then) =
      __$CoordinacionCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'records_find') List<RecordsFind> recordsFind});
}

/// @nodoc
class __$CoordinacionCopyWithImpl<$Res> extends _$CoordinacionCopyWithImpl<$Res>
    implements _$CoordinacionCopyWith<$Res> {
  __$CoordinacionCopyWithImpl(
      _Coordinacion _value, $Res Function(_Coordinacion) _then)
      : super(_value, (v) => _then(v as _Coordinacion));

  @override
  _Coordinacion get _value => super._value as _Coordinacion;

  @override
  $Res call({
    Object? recordsFind = freezed,
  }) {
    return _then(_Coordinacion(
      recordsFind: recordsFind == freezed
          ? _value.recordsFind
          : recordsFind // ignore: cast_nullable_to_non_nullable
              as List<RecordsFind>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coordinacion implements _Coordinacion {
  _$_Coordinacion({@JsonKey(name: 'records_find') required this.recordsFind});

  factory _$_Coordinacion.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinacionFromJson(json);

  @override
  @JsonKey(name: 'records_find')
  final List<RecordsFind> recordsFind;

  @override
  String toString() {
    return 'Coordinacion(recordsFind: $recordsFind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coordinacion &&
            const DeepCollectionEquality()
                .equals(other.recordsFind, recordsFind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recordsFind));

  @JsonKey(ignore: true)
  @override
  _$CoordinacionCopyWith<_Coordinacion> get copyWith =>
      __$CoordinacionCopyWithImpl<_Coordinacion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinacionToJson(this);
  }
}

abstract class _Coordinacion implements Coordinacion {
  factory _Coordinacion(
      {@JsonKey(name: 'records_find')
          required List<RecordsFind> recordsFind}) = _$_Coordinacion;

  factory _Coordinacion.fromJson(Map<String, dynamic> json) =
      _$_Coordinacion.fromJson;

  @override
  @JsonKey(name: 'records_find')
  List<RecordsFind> get recordsFind;
  @override
  @JsonKey(ignore: true)
  _$CoordinacionCopyWith<_Coordinacion> get copyWith =>
      throw _privateConstructorUsedError;
}
