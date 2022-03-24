// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/inspeccion/presentation/pages/inspeccion_page.dart'
    as _i4;
import '../../features/pages/home_page.dart' as _i2;
import '../../features/pages/sign_in_page.dart' as _i3;
import '../app_start_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppStartRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppStartPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    InspeccionRoute.name: (routeData) {
      final args = routeData.argsAs<InspeccionRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.InspeccionPage(
              key: args.key, tipoInspeccionId: args.tipoInspeccionId));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AppStartRoute.name, path: '/'),
        _i5.RouteConfig(HomeRoute.name, path: '/home'),
        _i5.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i5.RouteConfig(InspeccionRoute.name,
            path: '/inspeccion/:tipoInspeccionId')
      ];
}

/// generated route for
/// [_i1.AppStartPage]
class AppStartRoute extends _i5.PageRouteInfo<void> {
  const AppStartRoute() : super(AppStartRoute.name, path: '/');

  static const String name = 'AppStartRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.InspeccionPage]
class InspeccionRoute extends _i5.PageRouteInfo<InspeccionRouteArgs> {
  InspeccionRoute({_i6.Key? key, required String tipoInspeccionId})
      : super(InspeccionRoute.name,
            path: '/inspeccion/:tipoInspeccionId',
            args: InspeccionRouteArgs(
                key: key, tipoInspeccionId: tipoInspeccionId));

  static const String name = 'InspeccionRoute';
}

class InspeccionRouteArgs {
  const InspeccionRouteArgs({this.key, required this.tipoInspeccionId});

  final _i6.Key? key;

  final String tipoInspeccionId;

  @override
  String toString() {
    return 'InspeccionRouteArgs{key: $key, tipoInspeccionId: $tipoInspeccionId}';
  }
}
