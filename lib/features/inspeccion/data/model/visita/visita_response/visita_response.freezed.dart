// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visita_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitaResponse _$VisitaResponseFromJson(Map<String, dynamic> json) {
  return _VisitaResponse.fromJson(json);
}

/// @nodoc
class _$VisitaResponseTearOff {
  const _$VisitaResponseTearOff();

  _VisitaResponse call({bool? success, String? message, int? id}) {
    return _VisitaResponse(
      success: success,
      message: message,
      id: id,
    );
  }

  VisitaResponse fromJson(Map<String, Object?> json) {
    return VisitaResponse.fromJson(json);
  }
}

/// @nodoc
const $VisitaResponse = _$VisitaResponseTearOff();

/// @nodoc
mixin _$VisitaResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitaResponseCopyWith<VisitaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaResponseCopyWith<$Res> {
  factory $VisitaResponseCopyWith(
          VisitaResponse value, $Res Function(VisitaResponse) then) =
      _$VisitaResponseCopyWithImpl<$Res>;
  $Res call({bool? success, String? message, int? id});
}

/// @nodoc
class _$VisitaResponseCopyWithImpl<$Res>
    implements $VisitaResponseCopyWith<$Res> {
  _$VisitaResponseCopyWithImpl(this._value, this._then);

  final VisitaResponse _value;
  // ignore: unused_field
  final $Res Function(VisitaResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VisitaResponseCopyWith<$Res>
    implements $VisitaResponseCopyWith<$Res> {
  factory _$VisitaResponseCopyWith(
          _VisitaResponse value, $Res Function(_VisitaResponse) then) =
      __$VisitaResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, String? message, int? id});
}

/// @nodoc
class __$VisitaResponseCopyWithImpl<$Res>
    extends _$VisitaResponseCopyWithImpl<$Res>
    implements _$VisitaResponseCopyWith<$Res> {
  __$VisitaResponseCopyWithImpl(
      _VisitaResponse _value, $Res Function(_VisitaResponse) _then)
      : super(_value, (v) => _then(v as _VisitaResponse));

  @override
  _VisitaResponse get _value => super._value as _VisitaResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? id = freezed,
  }) {
    return _then(_VisitaResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VisitaResponse implements _VisitaResponse {
  _$_VisitaResponse({this.success, this.message, this.id});

  factory _$_VisitaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VisitaResponseFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? id;

  @override
  String toString() {
    return 'VisitaResponse(success: $success, message: $message, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VisitaResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$VisitaResponseCopyWith<_VisitaResponse> get copyWith =>
      __$VisitaResponseCopyWithImpl<_VisitaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitaResponseToJson(this);
  }
}

abstract class _VisitaResponse implements VisitaResponse {
  factory _VisitaResponse({bool? success, String? message, int? id}) =
      _$_VisitaResponse;

  factory _VisitaResponse.fromJson(Map<String, dynamic> json) =
      _$_VisitaResponse.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$VisitaResponseCopyWith<_VisitaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
