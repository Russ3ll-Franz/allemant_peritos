part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState(
      {@Default(Username.pure()) Username username,
      @Default(Password.pure()) Password password,
      @Default(FormzStatus.pure) FormzStatus status}) = _LoginState;

/*   const factory LoginState.copyWith({@Default(Username.pure()) Username username, @Default(Password.pure()) Password password, @Default(FormzStatus.pure) FormzStatus status, @Default('') String exceptionError}) = _Initial;
 */
}
