part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({@Default(AuthenticationStatus.unknown) AuthenticationStatus status, User? user}) = _AuthenticationState;

  /* final AuthenticationStatus status;
  final User user; */
  const factory AuthenticationState.loading({User? user}) = Loading;
  const factory AuthenticationState.unauthenticated({User? user}) = Unauthenticated;
  const factory AuthenticationState.authenticated({User? user}) = Authenticated;
  const factory AuthenticationState.unknown({User? user}) = Unknown;
  const factory AuthenticationState.error({HttpException? error, User? user}) = Error;
}
