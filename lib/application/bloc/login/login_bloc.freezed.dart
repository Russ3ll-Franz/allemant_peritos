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

  _Initial initial(
      {Username username = const Username.pure(),
      Password password = const Password.pure(),
      FormzStatus status = FormzStatus.pure,
      String exceptionError = ''}) {
    return _Initial(
      username: username,
      password: password,
      status: status,
      exceptionError: exceptionError,
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)
        $default, {
    required TResult Function(Username username, Password password,
            FormzStatus status, String exceptionError)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)?
        $default, {
    TResult Function(Username username, Password password, FormzStatus status,
            String exceptionError)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)?
        $default, {
    TResult Function(Username username, Password password, FormzStatus status,
            String exceptionError)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)
        $default, {
    required TResult Function(Username username, Password password,
            FormzStatus status, String exceptionError)
        initial,
  }) {
    return $default(username, password, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)?
        $default, {
    TResult Function(Username username, Password password, FormzStatus status,
            String exceptionError)?
        initial,
  }) {
    return $default?.call(username, password, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)?
        $default, {
    TResult Function(Username username, Password password, FormzStatus status,
            String exceptionError)?
        initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(username, password, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
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
abstract class _$InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      Password password,
      FormzStatus status,
      String exceptionError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? exceptionError = freezed,
  }) {
    return _then(_Initial(
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
      exceptionError: exceptionError == freezed
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.username = const Username.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.pure,
      this.exceptionError = ''});

  @JsonKey()
  @override
  final Username username;
  @JsonKey()
  @override
  final Password password;
  @JsonKey()
  @override
  final FormzStatus status;
  @JsonKey()
  @override
  final String exceptionError;

  @override
  String toString() {
    return 'LoginState.initial(username: $username, password: $password, status: $status, exceptionError: $exceptionError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.exceptionError, exceptionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(exceptionError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)
        $default, {
    required TResult Function(Username username, Password password,
            FormzStatus status, String exceptionError)
        initial,
  }) {
    return initial(username, password, status, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)?
        $default, {
    TResult Function(Username username, Password password, FormzStatus status,
            String exceptionError)?
        initial,
  }) {
    return initial?.call(username, password, status, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Username username, Password password, FormzStatus status)?
        $default, {
    TResult Function(Username username, Password password, FormzStatus status,
            String exceptionError)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(username, password, status, exceptionError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial(
      {Username username,
      Password password,
      FormzStatus status,
      String exceptionError}) = _$_Initial;

  @override
  Username get username;
  @override
  Password get password;
  @override
  FormzStatus get status;
  String get exceptionError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _LoginUsernameChanged loginUsernameChanged(String username) {
    return _LoginUsernameChanged(
      username,
    );
  }

  _LoginPasswordChanged loginPasswordChanged(String password) {
    return _LoginPasswordChanged(
      password,
    );
  }

  _LoginSubmitted loginSubmitted() {
    return const _LoginSubmitted();
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
    required TResult Function(_LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(_LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
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
abstract class _$LoginUsernameChangedCopyWith<$Res> {
  factory _$LoginUsernameChangedCopyWith(_LoginUsernameChanged value,
          $Res Function(_LoginUsernameChanged) then) =
      __$LoginUsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$LoginUsernameChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginUsernameChangedCopyWith<$Res> {
  __$LoginUsernameChangedCopyWithImpl(
      _LoginUsernameChanged _value, $Res Function(_LoginUsernameChanged) _then)
      : super(_value, (v) => _then(v as _LoginUsernameChanged));

  @override
  _LoginUsernameChanged get _value => super._value as _LoginUsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_LoginUsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginUsernameChanged implements _LoginUsernameChanged {
  const _$_LoginUsernameChanged(this.username);

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
            other is _LoginUsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$LoginUsernameChangedCopyWith<_LoginUsernameChanged> get copyWith =>
      __$LoginUsernameChangedCopyWithImpl<_LoginUsernameChanged>(
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
    required TResult Function(_LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(_LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginUsernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChanged != null) {
      return loginUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class _LoginUsernameChanged implements LoginEvent {
  const factory _LoginUsernameChanged(String username) =
      _$_LoginUsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$LoginUsernameChangedCopyWith<_LoginUsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginPasswordChangedCopyWith<$Res> {
  factory _$LoginPasswordChangedCopyWith(_LoginPasswordChanged value,
          $Res Function(_LoginPasswordChanged) then) =
      __$LoginPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$LoginPasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginPasswordChangedCopyWith<$Res> {
  __$LoginPasswordChangedCopyWithImpl(
      _LoginPasswordChanged _value, $Res Function(_LoginPasswordChanged) _then)
      : super(_value, (v) => _then(v as _LoginPasswordChanged));

  @override
  _LoginPasswordChanged get _value => super._value as _LoginPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_LoginPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginPasswordChanged implements _LoginPasswordChanged {
  const _$_LoginPasswordChanged(this.password);

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
            other is _LoginPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LoginPasswordChangedCopyWith<_LoginPasswordChanged> get copyWith =>
      __$LoginPasswordChangedCopyWithImpl<_LoginPasswordChanged>(
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
    required TResult Function(_LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(_LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _LoginPasswordChanged implements LoginEvent {
  const factory _LoginPasswordChanged(String password) =
      _$_LoginPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$LoginPasswordChangedCopyWith<_LoginPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginSubmittedCopyWith<$Res> {
  factory _$LoginSubmittedCopyWith(
          _LoginSubmitted value, $Res Function(_LoginSubmitted) then) =
      __$LoginSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginSubmittedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginSubmittedCopyWith<$Res> {
  __$LoginSubmittedCopyWithImpl(
      _LoginSubmitted _value, $Res Function(_LoginSubmitted) _then)
      : super(_value, (v) => _then(v as _LoginSubmitted));

  @override
  _LoginSubmitted get _value => super._value as _LoginSubmitted;
}

/// @nodoc

class _$_LoginSubmitted implements _LoginSubmitted {
  const _$_LoginSubmitted();

  @override
  String toString() {
    return 'LoginEvent.loginSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginSubmitted);
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
    required TResult Function(_LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(_LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(_LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmitted implements LoginEvent {
  const factory _LoginSubmitted() = _$_LoginSubmitted;
}
