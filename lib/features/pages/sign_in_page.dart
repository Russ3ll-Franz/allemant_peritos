import 'package:allemant_peritos/application/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/repository/authentication_repository.dart';
import '../forms/login_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
/*   static Page page() => const MaterialPage<void>(child: SignInPage());
 */
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => SignInPage());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // dark text for status bar
        statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: Colors.white,
      /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ), */

      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: BlocProvider(
              create: (context) {
                return LoginBloc(
                  authenticationRepository:
                      RepositoryProvider.of<AuthenticationRepository>(context),
                );
              },
              child: const LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}
