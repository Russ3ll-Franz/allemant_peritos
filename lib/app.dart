import 'dart:math';

import 'package:allemant_peritos/application/bloc/authentication/authentication_bloc.dart';
import 'package:allemant_peritos/application/repository/authentication_repository.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/route/app_router.dart';
import 'package:allemant_peritos/core/route/app_router.gr.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_inspeccion_repository.dart';
import 'package:allemant_peritos/features/inspeccion/domain/repository/i_userlocation_repository.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/bloc/visitas_bloc.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/coordinacion/coordinacion_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/dropdown/dropdown_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/application/location/location_cubit.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/cubit/inspeccion_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'configs/constants.dart';

class MyApp extends StatelessWidget {
  //FUNCIONANDO DE ESTA MANERA
  const MyApp(
      {Key? key,
      required this.authenticationRepository,
      required this.userRepository,
      required this.inspeccionRepository,
      required this.userLocationRepository})
      : super(key: key);

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;
  final IInspeccionRepository inspeccionRepository;
  final IUserLocationsRepository userLocationRepository;
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
        RepositoryProvider.value(value: userLocationRepository),
      ],
      child: MultiBlocProvider(providers: [
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
        BlocProvider(
            create: (context) => CoordinacionCubit(
                  inspeccionRepository: inspeccionRepository,
                )),
        BlocProvider(
            create: (context) => VisitasBloc(
                  inspeccionRepository: inspeccionRepository,
                )),
        BlocProvider(
            create: (context) => DropdownCubit(
                  inspeccionRepository: inspeccionRepository,
                )),
        BlocProvider(
            create: (context) => LocationCubit(
                  iUserLocationsRepository: userLocationRepository,
                )),
      ], child: const MyView()),
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
      builder: (context, child) {
        if (child == null) return SizedBox.shrink();

        final data = MediaQuery.of(context);
        final smallestSize = min(data.size.width, data.size.height);
        final textScaleFactor =
            min(smallestSize / AppConstants.designScreenSize.width, 2.0);

        return MediaQuery(
          data: data.copyWith(
            textScaleFactor: textScaleFactor,
          ),
          child: child,
        );
      },
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 212, 51, 212)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color.fromARGB(255, 255, 106, 19),
        ),
      ),
      debugShowCheckedModeBanner: false,
      /*     supportedLocales: const [
        Locale('es'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ], */
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [AppRouteObserver()],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
