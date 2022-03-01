part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginUsernameChanged(String username) = _LoginUsernameChanged;
  const factory LoginEvent.loginPasswordChanged(String password) = _LoginPasswordChanged;
  const factory LoginEvent.loginSubmitted() = _LoginSubmitted;
}
