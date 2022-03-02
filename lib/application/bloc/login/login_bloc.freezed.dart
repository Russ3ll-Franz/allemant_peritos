// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {Username username = const Username.pure(),
      Password password = const Password.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _LoginState(
      username: username,
      password: password,
      status: status,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({Username username, Password password, FormzStatus status});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({Username username, Password password, FormzStatus status});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(_LoginState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {this.username = const Username.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.pure});

  @JsonKey()
  @override
  final Username username;
  @JsonKey()
  @override
  final Password password;
  @JsonKey()
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'LoginState(username: $username, password: $password, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {Username username,
      Password password,
      FormzStatus status}) = _$_LoginState;

  @override
  Username get username;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LoginUsernameChanged loginUsernameChanged(String username) {
    return LoginUsernameChanged(
      username,
    );
  }

  LoginPasswordChanged loginPasswordChanged(String password) {
    return LoginPasswordChanged(
      password,
    );
  }

  LoginSubmitted loginSubmitted() {
    return const LoginSubmitted();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $LoginUsernameChangedCopyWith<$Res> {
  factory $LoginUsernameChangedCopyWith(LoginUsernameChanged value,
          $Res Function(LoginUsernameChanged) then) =
      _$LoginUsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$LoginUsernameChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginUsernameChangedCopyWith<$Res> {
  _$LoginUsernameChangedCopyWithImpl(
      LoginUsernameChanged _value, $Res Function(LoginUsernameChanged) _then)
      : super(_value, (v) => _then(v as LoginUsernameChanged));

  @override
  LoginUsernameChanged get _value => super._value as LoginUsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(LoginUsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUsernameChanged implements LoginUsernameChanged {
  const _$LoginUsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.loginUsernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $LoginUsernameChangedCopyWith<LoginUsernameChanged> get copyWith =>
      _$LoginUsernameChangedCopyWithImpl<LoginUsernameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginUsernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginUsernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChanged != null) {
      return loginUsernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginUsernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChanged != null) {
      return loginUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class LoginUsernameChanged implements LoginEvent {
  const factory LoginUsernameChanged(String username) = _$LoginUsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  $LoginUsernameChangedCopyWith<LoginUsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPasswordChangedCopyWith<$Res> {
  factory $LoginPasswordChangedCopyWith(LoginPasswordChanged value,
          $Res Function(LoginPasswordChanged) then) =
      _$LoginPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$LoginPasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginPasswordChangedCopyWith<$Res> {
  _$LoginPasswordChangedCopyWithImpl(
      LoginPasswordChanged _value, $Res Function(LoginPasswordChanged) _then)
      : super(_value, (v) => _then(v as LoginPasswordChanged));

  @override
  LoginPasswordChanged get _value => super._value as LoginPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(LoginPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginPasswordChanged implements LoginPasswordChanged {
  const _$LoginPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $LoginPasswordChangedCopyWith<LoginPasswordChanged> get copyWith =>
      _$LoginPasswordChangedCopyWithImpl<LoginPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordChanged implements LoginEvent {
  const factory LoginPasswordChanged(String password) = _$LoginPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $LoginPasswordChangedCopyWith<LoginPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSubmittedCopyWith<$Res> {
  factory $LoginSubmittedCopyWith(
          LoginSubmitted value, $Res Function(LoginSubmitted) then) =
      _$LoginSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginSubmittedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginSubmittedCopyWith<$Res> {
  _$LoginSubmittedCopyWithImpl(
      LoginSubmitted _value, $Res Function(LoginSubmitted) _then)
      : super(_value, (v) => _then(v as LoginSubmitted));

  @override
  LoginSubmitted get _value => super._value as LoginSubmitted;
}

/// @nodoc

class _$LoginSubmitted implements LoginSubmitted {
  const _$LoginSubmitted();

  @override
  String toString() {
    return 'LoginEvent.loginSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitted implements LoginEvent {
  const factory LoginSubmitted() = _$LoginSubmitted;
}
