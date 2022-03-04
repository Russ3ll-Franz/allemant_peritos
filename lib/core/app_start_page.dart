import 'package:allemant_peritos/app.dart';
import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/pages/routes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppStartPage extends StatelessWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              state.when((status, user) => 'Data $Data',
                  loading: (loading) {
                    const snackBar = SnackBar(
                      backgroundColor: Colors.black,
                      content: Text("Cargando"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  authenticated: (authenticated) => context.router.push(const HomeRoute()),
                  unauthenticated: (unauthenticated) => context.router.push(const SignInRoute()),
                  unknown: (unknown) {
                    const snackBar = SnackBar(
                      backgroundColor: Colors.black,
                      content: Text("Cargando"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  error: (error, user) => 'Error: $error');
            },
            child: const CircularProgressIndicator()));
  }
}
