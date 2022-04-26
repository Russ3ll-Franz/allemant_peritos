// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visitas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VisitasEventTearOff {
  const _$VisitasEventTearOff();

  VisitaSubmitted visitaSubmitted(Visita visita) {
    return VisitaSubmitted(
      visita,
    );
  }
}

/// @nodoc
const $VisitasEvent = _$VisitasEventTearOff();

/// @nodoc
mixin _$VisitasEvent {
  Visita get visita => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Visita visita) visitaSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Visita visita)? visitaSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Visita visita)? visitaSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisitaSubmitted value) visitaSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VisitaSubmitted value)? visitaSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisitaSubmitted value)? visitaSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitasEventCopyWith<VisitasEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitasEventCopyWith<$Res> {
  factory $VisitasEventCopyWith(
          VisitasEvent value, $Res Function(VisitasEvent) then) =
      _$VisitasEventCopyWithImpl<$Res>;
  $Res call({Visita visita});

  $VisitaCopyWith<$Res> get visita;
}

/// @nodoc
class _$VisitasEventCopyWithImpl<$Res> implements $VisitasEventCopyWith<$Res> {
  _$VisitasEventCopyWithImpl(this._value, this._then);

  final VisitasEvent _value;
  // ignore: unused_field
  final $Res Function(VisitasEvent) _then;

  @override
  $Res call({
    Object? visita = freezed,
  }) {
    return _then(_value.copyWith(
      visita: visita == freezed
          ? _value.visita
          : visita // ignore: cast_nullable_to_non_nullable
              as Visita,
    ));
  }

  @override
  $VisitaCopyWith<$Res> get visita {
    return $VisitaCopyWith<$Res>(_value.visita, (value) {
      return _then(_value.copyWith(visita: value));
    });
  }
}

/// @nodoc
abstract class $VisitaSubmittedCopyWith<$Res>
    implements $VisitasEventCopyWith<$Res> {
  factory $VisitaSubmittedCopyWith(
          VisitaSubmitted value, $Res Function(VisitaSubmitted) then) =
      _$VisitaSubmittedCopyWithImpl<$Res>;
  @override
  $Res call({Visita visita});

  @override
  $VisitaCopyWith<$Res> get visita;
}

/// @nodoc
class _$VisitaSubmittedCopyWithImpl<$Res>
    extends _$VisitasEventCopyWithImpl<$Res>
    implements $VisitaSubmittedCopyWith<$Res> {
  _$VisitaSubmittedCopyWithImpl(
      VisitaSubmitted _value, $Res Function(VisitaSubmitted) _then)
      : super(_value, (v) => _then(v as VisitaSubmitted));

  @override
  VisitaSubmitted get _value => super._value as VisitaSubmitted;

  @override
  $Res call({
    Object? visita = freezed,
  }) {
    return _then(VisitaSubmitted(
      visita == freezed
          ? _value.visita
          : visita // ignore: cast_nullable_to_non_nullable
              as Visita,
    ));
  }
}

/// @nodoc

class _$VisitaSubmitted implements VisitaSubmitted {
  const _$VisitaSubmitted(this.visita);

  @override
  final Visita visita;

  @override
  String toString() {
    return 'VisitasEvent.visitaSubmitted(visita: $visita)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VisitaSubmitted &&
            const DeepCollectionEquality().equals(other.visita, visita));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(visita));

  @JsonKey(ignore: true)
  @override
  $VisitaSubmittedCopyWith<VisitaSubmitted> get copyWith =>
      _$VisitaSubmittedCopyWithImpl<VisitaSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Visita visita) visitaSubmitted,
  }) {
    return visitaSubmitted(visita);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Visita visita)? visitaSubmitted,
  }) {
    return visitaSubmitted?.call(visita);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Visita visita)? visitaSubmitted,
    required TResult orElse(),
  }) {
    if (visitaSubmitted != null) {
      return visitaSubmitted(visita);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisitaSubmitted value) visitaSubmitted,
  }) {
    return visitaSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VisitaSubmitted value)? visitaSubmitted,
  }) {
    return visitaSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisitaSubmitted value)? visitaSubmitted,
    required TResult orElse(),
  }) {
    if (visitaSubmitted != null) {
      return visitaSubmitted(this);
    }
    return orElse();
  }
}

abstract class VisitaSubmitted implements VisitasEvent {
  const factory VisitaSubmitted(Visita visita) = _$VisitaSubmitted;

  @override
  Visita get visita;
  @override
  @JsonKey(ignore: true)
  $VisitaSubmittedCopyWith<VisitaSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VisitasStateTearOff {
  const _$VisitasStateTearOff();

  Initital initial() {
    return const Initital();
  }

  VisitaSuccess success({VisitaResponse? visitaResponse}) {
    return VisitaSuccess(
      visitaResponse: visitaResponse,
    );
  }
}

/// @nodoc
const $VisitasState = _$VisitasStateTearOff();

/// @nodoc
mixin _$VisitasState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VisitaResponse? visitaResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VisitaResponse? visitaResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VisitaResponse? visitaResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(VisitaSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(VisitaSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(VisitaSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitasStateCopyWith<$Res> {
  factory $VisitasStateCopyWith(
          VisitasState value, $Res Function(VisitasState) then) =
      _$VisitasStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VisitasStateCopyWithImpl<$Res> implements $VisitasStateCopyWith<$Res> {
  _$VisitasStateCopyWithImpl(this._value, this._then);

  final VisitasState _value;
  // ignore: unused_field
  final $Res Function(VisitasState) _then;
}

/// @nodoc
abstract class $InititalCopyWith<$Res> {
  factory $InititalCopyWith(Initital value, $Res Function(Initital) then) =
      _$InititalCopyWithImpl<$Res>;
}

/// @nodoc
class _$InititalCopyWithImpl<$Res> extends _$VisitasStateCopyWithImpl<$Res>
    implements $InititalCopyWith<$Res> {
  _$InititalCopyWithImpl(Initital _value, $Res Function(Initital) _then)
      : super(_value, (v) => _then(v as Initital));

  @override
  Initital get _value => super._value as Initital;
}

/// @nodoc

class _$Initital implements Initital {
  const _$Initital();

  @override
  String toString() {
    return 'VisitasState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VisitaResponse? visitaResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VisitaResponse? visitaResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VisitaResponse? visitaResponse)? success,
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
    required TResult Function(Initital value) initial,
    required TResult Function(VisitaSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(VisitaSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(VisitaSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initital implements VisitasState {
  const factory Initital() = _$Initital;
}

/// @nodoc
abstract class $VisitaSuccessCopyWith<$Res> {
  factory $VisitaSuccessCopyWith(
          VisitaSuccess value, $Res Function(VisitaSuccess) then) =
      _$VisitaSuccessCopyWithImpl<$Res>;
  $Res call({VisitaResponse? visitaResponse});

  $VisitaResponseCopyWith<$Res>? get visitaResponse;
}

/// @nodoc
class _$VisitaSuccessCopyWithImpl<$Res> extends _$VisitasStateCopyWithImpl<$Res>
    implements $VisitaSuccessCopyWith<$Res> {
  _$VisitaSuccessCopyWithImpl(
      VisitaSuccess _value, $Res Function(VisitaSuccess) _then)
      : super(_value, (v) => _then(v as VisitaSuccess));

  @override
  VisitaSuccess get _value => super._value as VisitaSuccess;

  @override
  $Res call({
    Object? visitaResponse = freezed,
  }) {
    return _then(VisitaSuccess(
      visitaResponse: visitaResponse == freezed
          ? _value.visitaResponse
          : visitaResponse // ignore: cast_nullable_to_non_nullable
              as VisitaResponse?,
    ));
  }

  @override
  $VisitaResponseCopyWith<$Res>? get visitaResponse {
    if (_value.visitaResponse == null) {
      return null;
    }

    return $VisitaResponseCopyWith<$Res>(_value.visitaResponse!, (value) {
      return _then(_value.copyWith(visitaResponse: value));
    });
  }
}

/// @nodoc

class _$VisitaSuccess implements VisitaSuccess {
  const _$VisitaSuccess({this.visitaResponse});

  @override
  final VisitaResponse? visitaResponse;

  @override
  String toString() {
    return 'VisitasState.success(visitaResponse: $visitaResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VisitaSuccess &&
            const DeepCollectionEquality()
                .equals(other.visitaResponse, visitaResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(visitaResponse));

  @JsonKey(ignore: true)
  @override
  $VisitaSuccessCopyWith<VisitaSuccess> get copyWith =>
      _$VisitaSuccessCopyWithImpl<VisitaSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VisitaResponse? visitaResponse) success,
  }) {
    return success(visitaResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VisitaResponse? visitaResponse)? success,
  }) {
    return success?.call(visitaResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VisitaResponse? visitaResponse)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(visitaResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(VisitaSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(VisitaSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(VisitaSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VisitaSuccess implements VisitasState {
  const factory VisitaSuccess({VisitaResponse? visitaResponse}) =
      _$VisitaSuccess;

  VisitaResponse? get visitaResponse;
  @JsonKey(ignore: true)
  $VisitaSuccessCopyWith<VisitaSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
