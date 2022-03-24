// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Loading loading({User? user}) {
    return Loading(
      user: user,
    );
  }

  Unauthenticated unauthenticated({User? user}) {
    return Unauthenticated(
      user: user,
    );
  }

  Authenticated authenticated({User? user}) {
    return Authenticated(
      user: user,
    );
  }

  Unknown unknown({User? user}) {
    return Unknown(
      user: user,
    );
  }

  Error error({HttpException? error, User? user}) {
    return Error(
      error: error,
      user: user,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  User? get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) loading,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) authenticated,
    required TResult Function(User? user) unknown,
    required TResult Function(HttpException? error, User? user) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unknown value) unknown,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Loading(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState.loading(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loading &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) loading,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) authenticated,
    required TResult Function(User? user) unknown,
    required TResult Function(HttpException? error, User? user) error,
  }) {
    return loading(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
  }) {
    return loading?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unknown value) unknown,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthenticationState {
  const factory Loading({User? user}) = _$Loading;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Unauthenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unauthenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UnauthenticatedCopyWith<Unauthenticated> get copyWith =>
      _$UnauthenticatedCopyWithImpl<Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) loading,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) authenticated,
    required TResult Function(User? user) unknown,
    required TResult Function(HttpException? error, User? user) error,
  }) {
    return unauthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
  }) {
    return unauthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unknown value) unknown,
    required TResult Function(Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthenticationState {
  const factory Unauthenticated({User? user}) = _$Unauthenticated;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  $UnauthenticatedCopyWith<Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Authenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) loading,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) authenticated,
    required TResult Function(User? user) unknown,
    required TResult Function(HttpException? error, User? user) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unknown value) unknown,
    required TResult Function(Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated({User? user}) = _$Authenticated;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UnknownCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(Unknown _value, $Res Function(Unknown) _then)
      : super(_value, (v) => _then(v as Unknown));

  @override
  Unknown get _value => super._value as Unknown;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Unknown(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState.unknown(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unknown &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UnknownCopyWith<Unknown> get copyWith =>
      _$UnknownCopyWithImpl<Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) loading,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) authenticated,
    required TResult Function(User? user) unknown,
    required TResult Function(HttpException? error, User? user) error,
  }) {
    return unknown(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
  }) {
    return unknown?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unknown value) unknown,
    required TResult Function(Error value) error,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthenticationState {
  const factory Unknown({User? user}) = _$Unknown;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  $UnknownCopyWith<Unknown> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({HttpException? error, User? user});

  $HttpExceptionCopyWith<$Res>? get error;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HttpException?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $HttpExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $HttpExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.error, this.user});

  @override
  final HttpException? error;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState.error(error: $error, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) loading,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) authenticated,
    required TResult Function(User? user) unknown,
    required TResult Function(HttpException? error, User? user) error,
  }) {
    return error(this.error, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
  }) {
    return error?.call(this.error, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? loading,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? authenticated,
    TResult Function(User? user)? unknown,
    TResult Function(HttpException? error, User? user)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unknown value) unknown,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unknown value)? unknown,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthenticationState {
  const factory Error({HttpException? error, User? user}) = _$Error;

  HttpException? get error;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  AuthenticationLogoutRequested logoutRequested() {
    return const AuthenticationLogoutRequested();
  }

  AuthenticationStatusChanged statusChanged(AuthenticationStatus status) {
    return AuthenticationStatusChanged(
      status,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logoutRequested,
    required TResult Function(AuthenticationStatus status) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logoutRequested,
    TResult Function(AuthenticationStatus status)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logoutRequested,
    TResult Function(AuthenticationStatus status)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $AuthenticationLogoutRequestedCopyWith<$Res> {
  factory $AuthenticationLogoutRequestedCopyWith(
          AuthenticationLogoutRequested value,
          $Res Function(AuthenticationLogoutRequested) then) =
      _$AuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationLogoutRequestedCopyWith<$Res> {
  _$AuthenticationLogoutRequestedCopyWithImpl(
      AuthenticationLogoutRequested _value,
      $Res Function(AuthenticationLogoutRequested) _then)
      : super(_value, (v) => _then(v as AuthenticationLogoutRequested));

  @override
  AuthenticationLogoutRequested get _value =>
      super._value as AuthenticationLogoutRequested;
}

/// @nodoc

class _$AuthenticationLogoutRequested implements AuthenticationLogoutRequested {
  const _$AuthenticationLogoutRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logoutRequested,
    required TResult Function(AuthenticationStatus status) statusChanged,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logoutRequested,
    TResult Function(AuthenticationStatus status)? statusChanged,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logoutRequested,
    TResult Function(AuthenticationStatus status)? statusChanged,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLogoutRequested implements AuthenticationEvent {
  const factory AuthenticationLogoutRequested() =
      _$AuthenticationLogoutRequested;
}

/// @nodoc
abstract class $AuthenticationStatusChangedCopyWith<$Res> {
  factory $AuthenticationStatusChangedCopyWith(
          AuthenticationStatusChanged value,
          $Res Function(AuthenticationStatusChanged) then) =
      _$AuthenticationStatusChangedCopyWithImpl<$Res>;
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class _$AuthenticationStatusChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationStatusChangedCopyWith<$Res> {
  _$AuthenticationStatusChangedCopyWithImpl(AuthenticationStatusChanged _value,
      $Res Function(AuthenticationStatusChanged) _then)
      : super(_value, (v) => _then(v as AuthenticationStatusChanged));

  @override
  AuthenticationStatusChanged get _value =>
      super._value as AuthenticationStatusChanged;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(AuthenticationStatusChanged(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$AuthenticationStatusChanged implements AuthenticationStatusChanged {
  const _$AuthenticationStatusChanged(this.status);

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationStatusChanged &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $AuthenticationStatusChangedCopyWith<AuthenticationStatusChanged>
      get copyWith => _$AuthenticationStatusChangedCopyWithImpl<
          AuthenticationStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logoutRequested,
    required TResult Function(AuthenticationStatus status) statusChanged,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logoutRequested,
    TResult Function(AuthenticationStatus status)? statusChanged,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logoutRequested,
    TResult Function(AuthenticationStatus status)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStatusChanged implements AuthenticationEvent {
  const factory AuthenticationStatusChanged(AuthenticationStatus status) =
      _$AuthenticationStatusChanged;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  $AuthenticationStatusChangedCopyWith<AuthenticationStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}
