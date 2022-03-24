import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/application/repository/authentication_repository.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/route/app_router.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  //FUNCIONANDO DE ESTA MANERA
  const MyApp(
      {Key? key,
      required this.authenticationRepository,
      required this.userRepository,
      required this.inspeccionRepository})
      : super(key: key);

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;
  final IInspeccionRepository inspeccionRepository;
  @override
  Widget build(BuildContext context) {
    //CORRECTO FUNCIONAODO
    /* return RepositoryProvider.value(
        value: authenticationRepository,
        child: BlocProvider(
          create: (_) => AuthenticationBloc(
            authenticationRepository: authenticationRepository,
            userRepository: userRepository,
          ),
          child: ScreenUtilInit(
            builder: () => const MyView(),
          ),
        )); */

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: authenticationRepository),
        RepositoryProvider.value(value: userRepository),
        RepositoryProvider.value(value: inspeccionRepository),
      ],
      child: MultiBlocProvider(
          providers: [
            ///
            /// BLoCs
            ///
            /*  BlocProvider<AuthenticationBloc>(
              create: (context) => AuthenticationBloc(
                  userRepository: context.read<UserRepository>(),
                  authenticationRepository:
                      context.read<AuthenticationRepository>()),
            ),
            BlocProvider<InspeccionBloc>(
              create: (context) => InspeccionBloc(
                inspeccionRepository: context.read<IInspeccionRepository>(),
              ),
            ) */

            BlocProvider(
                create: (context) => AuthenticationBloc(
                    authenticationRepository: authenticationRepository,
                    userRepository: userRepository)),
            BlocProvider(
                create: (context) => InspeccionCubit(
                      inspeccionRepository: inspeccionRepository,
                    )),
          ],
          child: ScreenUtilInit(
            builder: () => const MyView(),
          )),
    );
  }
}

class MyView extends StatefulWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  State<MyView> createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 212, 51, 212)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color.fromARGB(255, 255, 106, 19),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [AppRouteObserver()],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
