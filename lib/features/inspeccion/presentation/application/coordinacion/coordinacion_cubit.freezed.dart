// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coordinacion_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoordinacionStateTearOff {
  const _$CoordinacionStateTearOff();

  CoordinacionInitial initial() {
    return const CoordinacionInitial();
  }

  CoordinacionLoading loading() {
    return const CoordinacionLoading();
  }

  CoordinacionLoaded loaded({Coordinacion? inspeccion}) {
    return CoordinacionLoaded(
      inspeccion: inspeccion,
    );
  }

  CoordinacionError error(String message) {
    return CoordinacionError(
      message,
    );
  }
}

/// @nodoc
const $CoordinacionState = _$CoordinacionStateTearOff();

/// @nodoc
mixin _$CoordinacionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Coordinacion? inspeccion) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoordinacionInitial value) initial,
    required TResult Function(CoordinacionLoading value) loading,
    required TResult Function(CoordinacionLoaded value) loaded,
    required TResult Function(CoordinacionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinacionStateCopyWith<$Res> {
  factory $CoordinacionStateCopyWith(
          CoordinacionState value, $Res Function(CoordinacionState) then) =
      _$CoordinacionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoordinacionStateCopyWithImpl<$Res>
    implements $CoordinacionStateCopyWith<$Res> {
  _$CoordinacionStateCopyWithImpl(this._value, this._then);

  final CoordinacionState _value;
  // ignore: unused_field
  final $Res Function(CoordinacionState) _then;
}

/// @nodoc
abstract class $CoordinacionInitialCopyWith<$Res> {
  factory $CoordinacionInitialCopyWith(
          CoordinacionInitial value, $Res Function(CoordinacionInitial) then) =
      _$CoordinacionInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoordinacionInitialCopyWithImpl<$Res>
    extends _$CoordinacionStateCopyWithImpl<$Res>
    implements $CoordinacionInitialCopyWith<$Res> {
  _$CoordinacionInitialCopyWithImpl(
      CoordinacionInitial _value, $Res Function(CoordinacionInitial) _then)
      : super(_value, (v) => _then(v as CoordinacionInitial));

  @override
  CoordinacionInitial get _value => super._value as CoordinacionInitial;
}

/// @nodoc

class _$CoordinacionInitial implements CoordinacionInitial {
  const _$CoordinacionInitial();

  @override
  String toString() {
    return 'CoordinacionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoordinacionInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Coordinacion? inspeccion) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoordinacionInitial value) initial,
    required TResult Function(CoordinacionLoading value) loading,
    required TResult Function(CoordinacionLoaded value) loaded,
    required TResult Function(CoordinacionError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoordinacionInitial implements CoordinacionState {
  const factory CoordinacionInitial() = _$CoordinacionInitial;
}

/// @nodoc
abstract class $CoordinacionLoadingCopyWith<$Res> {
  factory $CoordinacionLoadingCopyWith(
          CoordinacionLoading value, $Res Function(CoordinacionLoading) then) =
      _$CoordinacionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoordinacionLoadingCopyWithImpl<$Res>
    extends _$CoordinacionStateCopyWithImpl<$Res>
    implements $CoordinacionLoadingCopyWith<$Res> {
  _$CoordinacionLoadingCopyWithImpl(
      CoordinacionLoading _value, $Res Function(CoordinacionLoading) _then)
      : super(_value, (v) => _then(v as CoordinacionLoading));

  @override
  CoordinacionLoading get _value => super._value as CoordinacionLoading;
}

/// @nodoc

class _$CoordinacionLoading implements CoordinacionLoading {
  const _$CoordinacionLoading();

  @override
  String toString() {
    return 'CoordinacionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoordinacionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Coordinacion? inspeccion) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoordinacionInitial value) initial,
    required TResult Function(CoordinacionLoading value) loading,
    required TResult Function(CoordinacionLoaded value) loaded,
    required TResult Function(CoordinacionError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoordinacionLoading implements CoordinacionState {
  const factory CoordinacionLoading() = _$CoordinacionLoading;
}

/// @nodoc
abstract class $CoordinacionLoadedCopyWith<$Res> {
  factory $CoordinacionLoadedCopyWith(
          CoordinacionLoaded value, $Res Function(CoordinacionLoaded) then) =
      _$CoordinacionLoadedCopyWithImpl<$Res>;
  $Res call({Coordinacion? inspeccion});

  $CoordinacionCopyWith<$Res>? get inspeccion;
}

/// @nodoc
class _$CoordinacionLoadedCopyWithImpl<$Res>
    extends _$CoordinacionStateCopyWithImpl<$Res>
    implements $CoordinacionLoadedCopyWith<$Res> {
  _$CoordinacionLoadedCopyWithImpl(
      CoordinacionLoaded _value, $Res Function(CoordinacionLoaded) _then)
      : super(_value, (v) => _then(v as CoordinacionLoaded));

  @override
  CoordinacionLoaded get _value => super._value as CoordinacionLoaded;

  @override
  $Res call({
    Object? inspeccion = freezed,
  }) {
    return _then(CoordinacionLoaded(
      inspeccion: inspeccion == freezed
          ? _value.inspeccion
          : inspeccion // ignore: cast_nullable_to_non_nullable
              as Coordinacion?,
    ));
  }

  @override
  $CoordinacionCopyWith<$Res>? get inspeccion {
    if (_value.inspeccion == null) {
      return null;
    }

    return $CoordinacionCopyWith<$Res>(_value.inspeccion!, (value) {
      return _then(_value.copyWith(inspeccion: value));
    });
  }
}

/// @nodoc

class _$CoordinacionLoaded implements CoordinacionLoaded {
  const _$CoordinacionLoaded({this.inspeccion});

  @override
  final Coordinacion? inspeccion;

  @override
  String toString() {
    return 'CoordinacionState.loaded(inspeccion: $inspeccion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoordinacionLoaded &&
            const DeepCollectionEquality()
                .equals(other.inspeccion, inspeccion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(inspeccion));

  @JsonKey(ignore: true)
  @override
  $CoordinacionLoadedCopyWith<CoordinacionLoaded> get copyWith =>
      _$CoordinacionLoadedCopyWithImpl<CoordinacionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Coordinacion? inspeccion) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(inspeccion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(inspeccion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(inspeccion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoordinacionInitial value) initial,
    required TResult Function(CoordinacionLoading value) loading,
    required TResult Function(CoordinacionLoaded value) loaded,
    required TResult Function(CoordinacionError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoordinacionLoaded implements CoordinacionState {
  const factory CoordinacionLoaded({Coordinacion? inspeccion}) =
      _$CoordinacionLoaded;

  Coordinacion? get inspeccion;
  @JsonKey(ignore: true)
  $CoordinacionLoadedCopyWith<CoordinacionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinacionErrorCopyWith<$Res> {
  factory $CoordinacionErrorCopyWith(
          CoordinacionError value, $Res Function(CoordinacionError) then) =
      _$CoordinacionErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CoordinacionErrorCopyWithImpl<$Res>
    extends _$CoordinacionStateCopyWithImpl<$Res>
    implements $CoordinacionErrorCopyWith<$Res> {
  _$CoordinacionErrorCopyWithImpl(
      CoordinacionError _value, $Res Function(CoordinacionError) _then)
      : super(_value, (v) => _then(v as CoordinacionError));

  @override
  CoordinacionError get _value => super._value as CoordinacionError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(CoordinacionError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoordinacionError implements CoordinacionError {
  const _$CoordinacionError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CoordinacionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoordinacionError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $CoordinacionErrorCopyWith<CoordinacionError> get copyWith =>
      _$CoordinacionErrorCopyWithImpl<CoordinacionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Coordinacion? inspeccion) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Coordinacion? inspeccion)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoordinacionInitial value) initial,
    required TResult Function(CoordinacionLoading value) loading,
    required TResult Function(CoordinacionLoaded value) loaded,
    required TResult Function(CoordinacionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoordinacionInitial value)? initial,
    TResult Function(CoordinacionLoading value)? loading,
    TResult Function(CoordinacionLoaded value)? loaded,
    TResult Function(CoordinacionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CoordinacionError implements CoordinacionState {
  const factory CoordinacionError(String message) = _$CoordinacionError;

  String get message;
  @JsonKey(ignore: true)
  $CoordinacionErrorCopyWith<CoordinacionError> get copyWith =>
      throw _privateConstructorUsedError;
}
