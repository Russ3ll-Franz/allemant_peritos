import 'dart:async';
import 'dart:convert';

import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/application/models/login_response/login_response.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final HttpMethodsType _helper = HttpMethodsType();
  final userRepository = UserRepository();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    final params = {
      'username': username,
      'password': password,
    };
    final response = await _helper.post("usuario/logInApp", jsonEncode(params));

    print(response);

    response.when(loading: (loading) async {
      return const AuthenticationState.loading();
    }, success: (success) async {
      final userID = LoginResponse.fromJson(success);

      await userRepository.saveIdUser(userID.user!.id.toString());

      _controller.add(AuthenticationStatus.authenticated);
      print("LLEGO");
      print(userID);
/*       return userID;
 */
      return AuthenticationStatus.authenticated;
    }, error: (error) async {
      return AuthenticationStatus.unknown;
    });
    /*   SharedPreferences preferences = await SharedPreferences.getInstance();
    final dataResponse = Useresponse.fromJson(response);
    preferences.setString("id", dataResponse.user.usuId); */
  }

  void logOut() async {
    await userRepository.remove();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
