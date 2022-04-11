// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dropdown_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DropdownStateTearOff {
  const _$DropdownStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  DropUsoInmueble dropDownUsoInmueble({UsoInmueble? usoInmueble}) {
    return DropUsoInmueble(
      usoInmueble: usoInmueble,
    );
  }

  _ErrorState error(String message) {
    return _ErrorState(
      message,
    );
  }
}

/// @nodoc
const $DropdownState = _$DropdownStateTearOff();

/// @nodoc
mixin _$DropdownState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsoInmueble? usoInmueble) dropDownUsoInmueble,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(DropUsoInmueble value) dropDownUsoInmueble,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownStateCopyWith<$Res> {
  factory $DropdownStateCopyWith(
          DropdownState value, $Res Function(DropdownState) then) =
      _$DropdownStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DropdownStateCopyWithImpl<$Res>
    implements $DropdownStateCopyWith<$Res> {
  _$DropdownStateCopyWithImpl(this._value, this._then);

  final DropdownState _value;
  // ignore: unused_field
  final $Res Function(DropdownState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DropdownStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DropdownState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsoInmueble? usoInmueble) dropDownUsoInmueble,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(DropUsoInmueble value) dropDownUsoInmueble,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DropdownState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DropdownStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DropdownState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsoInmueble? usoInmueble) dropDownUsoInmueble,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(DropUsoInmueble value) dropDownUsoInmueble,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DropdownState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class $DropUsoInmuebleCopyWith<$Res> {
  factory $DropUsoInmuebleCopyWith(
          DropUsoInmueble value, $Res Function(DropUsoInmueble) then) =
      _$DropUsoInmuebleCopyWithImpl<$Res>;
  $Res call({UsoInmueble? usoInmueble});

  $UsoInmuebleCopyWith<$Res>? get usoInmueble;
}

/// @nodoc
class _$DropUsoInmuebleCopyWithImpl<$Res>
    extends _$DropdownStateCopyWithImpl<$Res>
    implements $DropUsoInmuebleCopyWith<$Res> {
  _$DropUsoInmuebleCopyWithImpl(
      DropUsoInmueble _value, $Res Function(DropUsoInmueble) _then)
      : super(_value, (v) => _then(v as DropUsoInmueble));

  @override
  DropUsoInmueble get _value => super._value as DropUsoInmueble;

  @override
  $Res call({
    Object? usoInmueble = freezed,
  }) {
    return _then(DropUsoInmueble(
      usoInmueble: usoInmueble == freezed
          ? _value.usoInmueble
          : usoInmueble // ignore: cast_nullable_to_non_nullable
              as UsoInmueble?,
    ));
  }

  @override
  $UsoInmuebleCopyWith<$Res>? get usoInmueble {
    if (_value.usoInmueble == null) {
      return null;
    }

    return $UsoInmuebleCopyWith<$Res>(_value.usoInmueble!, (value) {
      return _then(_value.copyWith(usoInmueble: value));
    });
  }
}

/// @nodoc

class _$DropUsoInmueble implements DropUsoInmueble {
  const _$DropUsoInmueble({this.usoInmueble});

  @override
  final UsoInmueble? usoInmueble;

  @override
  String toString() {
    return 'DropdownState.dropDownUsoInmueble(usoInmueble: $usoInmueble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DropUsoInmueble &&
            const DeepCollectionEquality()
                .equals(other.usoInmueble, usoInmueble));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(usoInmueble));

  @JsonKey(ignore: true)
  @override
  $DropUsoInmuebleCopyWith<DropUsoInmueble> get copyWith =>
      _$DropUsoInmuebleCopyWithImpl<DropUsoInmueble>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsoInmueble? usoInmueble) dropDownUsoInmueble,
    required TResult Function(String message) error,
  }) {
    return dropDownUsoInmueble(usoInmueble);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
  }) {
    return dropDownUsoInmueble?.call(usoInmueble);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (dropDownUsoInmueble != null) {
      return dropDownUsoInmueble(usoInmueble);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(DropUsoInmueble value) dropDownUsoInmueble,
    required TResult Function(_ErrorState value) error,
  }) {
    return dropDownUsoInmueble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
  }) {
    return dropDownUsoInmueble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (dropDownUsoInmueble != null) {
      return dropDownUsoInmueble(this);
    }
    return orElse();
  }
}

abstract class DropUsoInmueble implements DropdownState {
  const factory DropUsoInmueble({UsoInmueble? usoInmueble}) = _$DropUsoInmueble;

  UsoInmueble? get usoInmueble;
  @JsonKey(ignore: true)
  $DropUsoInmuebleCopyWith<DropUsoInmueble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> extends _$DropdownStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DropdownState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsoInmueble? usoInmueble) dropDownUsoInmueble,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsoInmueble? usoInmueble)? dropDownUsoInmueble,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(DropUsoInmueble value) dropDownUsoInmueble,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(DropUsoInmueble value)? dropDownUsoInmueble,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements DropdownState {
  const factory _ErrorState(String message) = _$_ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}