// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inspeccion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InspeccionEventTearOff {
  const _$InspeccionEventTearOff();

  _Fetchet fetched(Inspeccion listInspeccion) {
    return _Fetchet(
      listInspeccion,
    );
  }
}

/// @nodoc
const $InspeccionEvent = _$InspeccionEventTearOff();

/// @nodoc
mixin _$InspeccionEvent {
  Inspeccion get listInspeccion => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Inspeccion listInspeccion) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Inspeccion listInspeccion)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Inspeccion listInspeccion)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetchet value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetchet value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetchet value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InspeccionEventCopyWith<InspeccionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspeccionEventCopyWith<$Res> {
  factory $InspeccionEventCopyWith(
          InspeccionEvent value, $Res Function(InspeccionEvent) then) =
      _$InspeccionEventCopyWithImpl<$Res>;
  $Res call({Inspeccion listInspeccion});

  $InspeccionCopyWith<$Res> get listInspeccion;
}

/// @nodoc
class _$InspeccionEventCopyWithImpl<$Res>
    implements $InspeccionEventCopyWith<$Res> {
  _$InspeccionEventCopyWithImpl(this._value, this._then);

  final InspeccionEvent _value;
  // ignore: unused_field
  final $Res Function(InspeccionEvent) _then;

  @override
  $Res call({
    Object? listInspeccion = freezed,
  }) {
    return _then(_value.copyWith(
      listInspeccion: listInspeccion == freezed
          ? _value.listInspeccion
          : listInspeccion // ignore: cast_nullable_to_non_nullable
              as Inspeccion,
    ));
  }

  @override
  $InspeccionCopyWith<$Res> get listInspeccion {
    return $InspeccionCopyWith<$Res>(_value.listInspeccion, (value) {
      return _then(_value.copyWith(listInspeccion: value));
    });
  }
}

/// @nodoc
abstract class _$FetchetCopyWith<$Res>
    implements $InspeccionEventCopyWith<$Res> {
  factory _$FetchetCopyWith(_Fetchet value, $Res Function(_Fetchet) then) =
      __$FetchetCopyWithImpl<$Res>;
  @override
  $Res call({Inspeccion listInspeccion});

  @override
  $InspeccionCopyWith<$Res> get listInspeccion;
}

/// @nodoc
class __$FetchetCopyWithImpl<$Res> extends _$InspeccionEventCopyWithImpl<$Res>
    implements _$FetchetCopyWith<$Res> {
  __$FetchetCopyWithImpl(_Fetchet _value, $Res Function(_Fetchet) _then)
      : super(_value, (v) => _then(v as _Fetchet));

  @override
  _Fetchet get _value => super._value as _Fetchet;

  @override
  $Res call({
    Object? listInspeccion = freezed,
  }) {
    return _then(_Fetchet(
      listInspeccion == freezed
          ? _value.listInspeccion
          : listInspeccion // ignore: cast_nullable_to_non_nullable
              as Inspeccion,
    ));
  }
}

/// @nodoc

class _$_Fetchet implements _Fetchet {
  const _$_Fetchet(this.listInspeccion);

  @override
  final Inspeccion listInspeccion;

  @override
  String toString() {
    return 'InspeccionEvent.fetched(listInspeccion: $listInspeccion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fetchet &&
            const DeepCollectionEquality()
                .equals(other.listInspeccion, listInspeccion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listInspeccion));

  @JsonKey(ignore: true)
  @override
  _$FetchetCopyWith<_Fetchet> get copyWith =>
      __$FetchetCopyWithImpl<_Fetchet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Inspeccion listInspeccion) fetched,
  }) {
    return fetched(listInspeccion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Inspeccion listInspeccion)? fetched,
  }) {
    return fetched?.call(listInspeccion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Inspeccion listInspeccion)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(listInspeccion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetchet value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetchet value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetchet value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetchet implements InspeccionEvent {
  const factory _Fetchet(Inspeccion listInspeccion) = _$_Fetchet;

  @override
  Inspeccion get listInspeccion;
  @override
  @JsonKey(ignore: true)
  _$FetchetCopyWith<_Fetchet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InspeccionStateTearOff {
  const _$InspeccionStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  Loaded inspeccionLoaded(
      [List<Inspeccion> tipoInspeccions = const <Inspeccion>[]]) {
    return Loaded(
      tipoInspeccions,
    );
  }
}

/// @nodoc
const $InspeccionState = _$InspeccionStateTearOff();

/// @nodoc
mixin _$InspeccionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(Loaded value) inspeccionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(Loaded value)? inspeccionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(Loaded value)? inspeccionLoaded,
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
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$InspeccionStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'InspeccionState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(Loaded value) inspeccionLoaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(Loaded value)? inspeccionLoaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(Loaded value)? inspeccionLoaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements InspeccionState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Inspeccion> tipoInspeccions});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$InspeccionStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? tipoInspeccions = freezed,
  }) {
    return _then(Loaded(
      tipoInspeccions == freezed
          ? _value.tipoInspeccions
          : tipoInspeccions // ignore: cast_nullable_to_non_nullable
              as List<Inspeccion>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded([this.tipoInspeccions = const <Inspeccion>[]]);

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
            other is Loaded &&
            const DeepCollectionEquality()
                .equals(other.tipoInspeccions, tipoInspeccions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tipoInspeccions));

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Inspeccion> tipoInspeccions)
        inspeccionLoaded,
  }) {
    return inspeccionLoaded(tipoInspeccions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
  }) {
    return inspeccionLoaded?.call(tipoInspeccions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Inspeccion> tipoInspeccions)? inspeccionLoaded,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(Loaded value) inspeccionLoaded,
  }) {
    return inspeccionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(Loaded value)? inspeccionLoaded,
  }) {
    return inspeccionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(Loaded value)? inspeccionLoaded,
    required TResult orElse(),
  }) {
    if (inspeccionLoaded != null) {
      return inspeccionLoaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements InspeccionState {
  const factory Loaded([List<Inspeccion> tipoInspeccions]) = _$Loaded;

  List<Inspeccion> get tipoInspeccions;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
