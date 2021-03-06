import 'dart:async';

import 'package:allemant_peritos/application/repository/authentication_repository.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/http/http_exceptions.dart';
import 'package:allemant_peritos/domain/models/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.dart';
part 'authentication_event.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    final userID = await _userRepository.storageUserId();

    if (userID != null) {
      final user = await _tryGetUser(userID);

      return emit(AuthenticationState.authenticated(user: user));
    } else {
      return emit(const AuthenticationState.unauthenticated());
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.logOut();
  }

  Future<User?> _tryGetUser(String userID) async {
    try {
      final user = await _userRepository.getUserById(userID);
      return user;
    } on Exception {
      return null;
    }
  }
}
