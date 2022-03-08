import 'dart:developer';
import 'dart:io';

import 'package:allemant_peritos/app.dart';
import 'package:allemant_peritos/application/repository/authentication_repository.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/injection/injection.dart';
import 'package:flutter/material.dart';

import 'core/http/http_override.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  configureDependencies();

  runApp(MyApp(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}
/*
class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is Loading) {
            } else if (state is Authenticated) {
              _navigator.pushAndRemoveUntil(HomePage.route(), (route) => false);
            } else if (state is Unauthenticated) {
              _navigator.pushAndRemoveUntil<void>(
                SignInPage.route(),
                (route) => false,
              );
            } else {
              _navigator.pushAndRemoveUntil<void>(
                SignInPage.route(),
                (route) => false,
              );
            }
          },
          child: child,
        );
      },
    );
  }
}
 */