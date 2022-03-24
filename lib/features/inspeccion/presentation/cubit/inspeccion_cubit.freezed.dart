// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inspeccion_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InspeccionStateTearOff {
  const _$InspeccionStateTearOff();

  InspeccionInitial initial() {
    return const InspeccionInitial();
  }

  InspeccionLoading inspeccionLoading() {
    return const InspeccionLoading();
  }

  InspeccionLoaded inspeccionLoaded(
      {List<Inspeccion> tipoInspeccions = const <Inspeccion>[]}) {
    return InspeccionLoaded(
      tipoInspeccions: tipoInspeccions,
    );
  }

  InspeccionErrorState error(String message) {
    return InspeccionErrorState(
      message,
    );
  }
}

/// @nodoc
const $InspeccionState = _$InspeccionStateTearOff();

/// @nodoc
mixin _$InspeccionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inspeccionLoading,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspeccionInitial value) initial,
    required TResult Function(InspeccionLoading value) inspeccionLoading,
    required TResult Function(InspeccionLoaded value) inspeccionLoaded,
    required TResult Function(InspeccionErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspeccionStateCopyWith<$Res> {
  factory $InspeccionStateCopyWith(
          InspeccionState value, $Res Function(InspeccionState) then) =
      _$InspeccionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InspeccionStateCopyWithImpl<$Res>
    implements $InspeccionStateCopyWith<$Res> {
  _$InspeccionStateCopyWithImpl(this._value, this._then);

  final InspeccionState _value;
  // ignore: unused_field
  final $Res Function(InspeccionState) _then;
}

/// @nodoc
abstract class $InspeccionInitialCopyWith<$Res> {
  factory $InspeccionInitialCopyWith(
          InspeccionInitial value, $Res Function(InspeccionInitial) then) =
      _$InspeccionInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InspeccionInitialCopyWithImpl<$Res>
    extends _$InspeccionStateCopyWithImpl<$Res>
    implements $InspeccionInitialCopyWith<$Res> {
  _$InspeccionInitialCopyWithImpl(
      InspeccionInitial _value, $Res Function(InspeccionInitial) _then)
      : super(_value, (v) => _then(v as InspeccionInitial));

  @override
  InspeccionInitial get _value => super._value as InspeccionInitial;
}

/// @nodoc

class _$InspeccionInitial implements InspeccionInitial {
  const _$InspeccionInitial();

  @override
  String toString() {
    return 'InspeccionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InspeccionInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inspeccionLoading,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
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
    required TResult Function(InspeccionInitial value) initial,
    required TResult Function(InspeccionLoading value) inspeccionLoading,
    required TResult Function(InspeccionLoaded value) inspeccionLoaded,
    required TResult Function(InspeccionErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InspeccionInitial implements InspeccionState {
  const factory InspeccionInitial() = _$InspeccionInitial;
}

/// @nodoc
abstract class $InspeccionLoadingCopyWith<$Res> {
  factory $InspeccionLoadingCopyWith(
          InspeccionLoading value, $Res Function(InspeccionLoading) then) =
      _$InspeccionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$InspeccionLoadingCopyWithImpl<$Res>
    extends _$InspeccionStateCopyWithImpl<$Res>
    implements $InspeccionLoadingCopyWith<$Res> {
  _$InspeccionLoadingCopyWithImpl(
      InspeccionLoading _value, $Res Function(InspeccionLoading) _then)
      : super(_value, (v) => _then(v as InspeccionLoading));

  @override
  InspeccionLoading get _value => super._value as InspeccionLoading;
}

/// @nodoc

class _$InspeccionLoading implements InspeccionLoading {
  const _$InspeccionLoading();

  @override
  String toString() {
    return 'InspeccionState.inspeccionLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InspeccionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inspeccionLoading,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
    required TResult Function(String message) error,
  }) {
    return inspeccionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
  }) {
    return inspeccionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (inspeccionLoading != null) {
      return inspeccionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspeccionInitial value) initial,
    required TResult Function(InspeccionLoading value) inspeccionLoading,
    required TResult Function(InspeccionLoaded value) inspeccionLoaded,
    required TResult Function(InspeccionErrorState value) error,
  }) {
    return inspeccionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
  }) {
    return inspeccionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (inspeccionLoading != null) {
      return inspeccionLoading(this);
    }
    return orElse();
  }
}

abstract class InspeccionLoading implements InspeccionState {
  const factory InspeccionLoading() = _$InspeccionLoading;
}

/// @nodoc
abstract class $InspeccionLoadedCopyWith<$Res> {
  factory $InspeccionLoadedCopyWith(
          InspeccionLoaded value, $Res Function(InspeccionLoaded) then) =
      _$InspeccionLoadedCopyWithImpl<$Res>;
  $Res call({List<Inspeccion> tipoInspeccions});
}

/// @nodoc
class _$InspeccionLoadedCopyWithImpl<$Res>
    extends _$InspeccionStateCopyWithImpl<$Res>
    implements $InspeccionLoadedCopyWith<$Res> {
  _$InspeccionLoadedCopyWithImpl(
      InspeccionLoaded _value, $Res Function(InspeccionLoaded) _then)
      : super(_value, (v) => _then(v as InspeccionLoaded));

  @override
  InspeccionLoaded get _value => super._value as InspeccionLoaded;

  @override
  $Res call({
    Object? tipoInspeccions = freezed,
  }) {
    return _then(InspeccionLoaded(
      tipoInspeccions: tipoInspeccions == freezed
          ? _value.tipoInspeccions
          : tipoInspeccions // ignore: cast_nullable_to_non_nullable
              as List<Inspeccion>,
    ));
  }
}

/// @nodoc

class _$InspeccionLoaded implements InspeccionLoaded {
  const _$InspeccionLoaded({this.tipoInspeccions = const <Inspeccion>[]});

  @JsonKey()
  @override
  final List<Inspeccion> tipoInspeccions;

  @override
  String toString() {
    return 'InspeccionState.inspeccionLoaded(tipoInspeccions: $tipoInspeccions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InspeccionLoaded &&
            const DeepCollectionEquality()
                .equals(other.tipoInspeccions, tipoInspeccions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tipoInspeccions));

  @JsonKey(ignore: true)
  @override
  $InspeccionLoadedCopyWith<InspeccionLoaded> get copyWith =>
      _$InspeccionLoadedCopyWithImpl<InspeccionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inspeccionLoading,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
    required TResult Function(String message) error,
  }) {
    return inspeccionLoaded(tipoInspeccions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
  }) {
    return inspeccionLoaded?.call(tipoInspeccions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (inspeccionLoaded != null) {
      return inspeccionLoaded(tipoInspeccions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InspeccionInitial value) initial,
    required TResult Function(InspeccionLoading value) inspeccionLoading,
    required TResult Function(InspeccionLoaded value) inspeccionLoaded,
    required TResult Function(InspeccionErrorState value) error,
  }) {
    return inspeccionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
  }) {
    return inspeccionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (inspeccionLoaded != null) {
      return inspeccionLoaded(this);
    }
    return orElse();
  }
}

abstract class InspeccionLoaded implements InspeccionState {
  const factory InspeccionLoaded({List<Inspeccion> tipoInspeccions}) =
      _$InspeccionLoaded;

  List<Inspeccion> get tipoInspeccions;
  @JsonKey(ignore: true)
  $InspeccionLoadedCopyWith<InspeccionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspeccionErrorStateCopyWith<$Res> {
  factory $InspeccionErrorStateCopyWith(InspeccionErrorState value,
          $Res Function(InspeccionErrorState) then) =
      _$InspeccionErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$InspeccionErrorStateCopyWithImpl<$Res>
    extends _$InspeccionStateCopyWithImpl<$Res>
    implements $InspeccionErrorStateCopyWith<$Res> {
  _$InspeccionErrorStateCopyWithImpl(
      InspeccionErrorState _value, $Res Function(InspeccionErrorState) _then)
      : super(_value, (v) => _then(v as InspeccionErrorState));

  @override
  InspeccionErrorState get _value => super._value as InspeccionErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InspeccionErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InspeccionErrorState implements InspeccionErrorState {
  const _$InspeccionErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InspeccionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InspeccionErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $InspeccionErrorStateCopyWith<InspeccionErrorState> get copyWith =>
      _$InspeccionErrorStateCopyWithImpl<InspeccionErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inspeccionLoading,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inspeccionLoading,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
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
    required TResult Function(InspeccionInitial value) initial,
    required TResult Function(InspeccionLoading value) inspeccionLoading,
    required TResult Function(InspeccionLoaded value) inspeccionLoaded,
    required TResult Function(InspeccionErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InspeccionInitial value)? initial,
    TResult Function(InspeccionLoading value)? inspeccionLoading,
    TResult Function(InspeccionLoaded value)? inspeccionLoaded,
    TResult Function(InspeccionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InspeccionErrorState implements InspeccionState {
  const factory InspeccionErrorState(String message) = _$InspeccionErrorState;

  String get message;
  @JsonKey(ignore: true)
  $InspeccionErrorStateCopyWith<InspeccionErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
