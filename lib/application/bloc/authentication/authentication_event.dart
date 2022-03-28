part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.logoutRequested() =
      AuthenticationLogoutRequested;
  const factory AuthenticationEvent.statusChanged(AuthenticationStatus status) =
      AuthenticationStatusChanged;
}
