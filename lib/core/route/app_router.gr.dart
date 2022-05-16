// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../features/inspeccion/data/model/coordinacion/coordinacion.dart'
    as _i11;
import '../../features/inspeccion/presentation/pages/detail_inspeccion_page.dart'
    as _i5;
import '../../features/inspeccion/presentation/pages/inspeccion_detail_page.dart'
    as _i6;
import '../../features/inspeccion/presentation/pages/inspeccion_page.dart'
    as _i4;
import '../../features/inspeccion/presentation/pages/inspeccion_register_page.dart'
    as _i7;
import '../../features/inspeccion/presentation/pages/inspeccion_register_page_exterior.dart'
    as _i8;
import '../../features/pages/home_page.dart' as _i2;
import '../../features/pages/sign_in_page.dart' as _i3;
import '../app_start_page.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AppStartRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppStartPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    InspeccionRoute.name: (routeData) {
      final args = routeData.argsAs<InspeccionRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.InspeccionPage(
              key: args.key, tipoInspeccionId: args.tipoInspeccionId));
    },
    DetailInspeccionRoute.name: (routeData) {
      final args = routeData.argsAs<DetailInspeccionRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.DetailInspeccionPage(
              key: args.key, receivedCoordinacion: args.receivedCoordinacion));
    },
    InspeccionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<InspeccionDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.InspeccionDetailPage(
              key: args.key, coordinacionID: args.coordinacionID));
    },
    InspeccionRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<InspeccionRegisterRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.InspeccionRegisterPage(
              key: args.key, inspeccionID: args.inspeccionID));
    },
    InspeccionRegisterExteriorRoute.name: (routeData) {
      final args = routeData.argsAs<InspeccionRegisterExteriorRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.InspeccionRegisterExteriorPage(
              key: args.key, inspeccionID: args.inspeccionID));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(AppStartRoute.name, path: '/'),
        _i9.RouteConfig(HomeRoute.name, path: '/home'),
        _i9.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i9.RouteConfig(InspeccionRoute.name,
            path: '/inspeccion/:tipoInspeccionId'),
        _i9.RouteConfig(DetailInspeccionRoute.name,
            path: '/inspeccion/detail/:coordinacion'),
        _i9.RouteConfig(InspeccionDetailRoute.name,
            path: '/inspeccion/:coordinacionId'),
        _i9.RouteConfig(InspeccionRegisterRoute.name,
            path: '/inspeccion/registrar'),
        _i9.RouteConfig(InspeccionRegisterExteriorRoute.name,
            path: '/inspeccion/exteriores/registrar')
      ];
}

/// generated route for
/// [_i1.AppStartPage]
class AppStartRoute extends _i9.PageRouteInfo<void> {
  const AppStartRoute() : super(AppStartRoute.name, path: '/');

  static const String name = 'AppStartRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.InspeccionPage]
class InspeccionRoute extends _i9.PageRouteInfo<InspeccionRouteArgs> {
  InspeccionRoute({_i10.Key? key, required String tipoInspeccionId})
      : super(InspeccionRoute.name,
            path: '/inspeccion/:tipoInspeccionId',
            args: InspeccionRouteArgs(
                key: key, tipoInspeccionId: tipoInspeccionId));

  static const String name = 'InspeccionRoute';
}

class InspeccionRouteArgs {
  const InspeccionRouteArgs({this.key, required this.tipoInspeccionId});

  final _i10.Key? key;

  final String tipoInspeccionId;

  @override
  String toString() {
    return 'InspeccionRouteArgs{key: $key, tipoInspeccionId: $tipoInspeccionId}';
  }
}

/// generated route for
/// [_i5.DetailInspeccionPage]
class DetailInspeccionRoute
    extends _i9.PageRouteInfo<DetailInspeccionRouteArgs> {
  DetailInspeccionRoute(
      {_i10.Key? key, required _i11.Coordinacion receivedCoordinacion})
      : super(DetailInspeccionRoute.name,
            path: '/inspeccion/detail/:coordinacion',
            args: DetailInspeccionRouteArgs(
                key: key, receivedCoordinacion: receivedCoordinacion));

  static const String name = 'DetailInspeccionRoute';
}

class DetailInspeccionRouteArgs {
  const DetailInspeccionRouteArgs(
      {this.key, required this.receivedCoordinacion});

  final _i10.Key? key;

  final _i11.Coordinacion receivedCoordinacion;

  @override
  String toString() {
    return 'DetailInspeccionRouteArgs{key: $key, receivedCoordinacion: $receivedCoordinacion}';
  }
}

/// generated route for
/// [_i6.InspeccionDetailPage]
class InspeccionDetailRoute
    extends _i9.PageRouteInfo<InspeccionDetailRouteArgs> {
  InspeccionDetailRoute({_i10.Key? key, required String coordinacionID})
      : super(InspeccionDetailRoute.name,
            path: '/inspeccion/:coordinacionId',
            args: InspeccionDetailRouteArgs(
                key: key, coordinacionID: coordinacionID));

  static const String name = 'InspeccionDetailRoute';
}

class InspeccionDetailRouteArgs {
  const InspeccionDetailRouteArgs({this.key, required this.coordinacionID});

  final _i10.Key? key;

  final String coordinacionID;

  @override
  String toString() {
    return 'InspeccionDetailRouteArgs{key: $key, coordinacionID: $coordinacionID}';
  }
}

/// generated route for
/// [_i7.InspeccionRegisterPage]
class InspeccionRegisterRoute
    extends _i9.PageRouteInfo<InspeccionRegisterRouteArgs> {
  InspeccionRegisterRoute({_i10.Key? key, required String inspeccionID})
      : super(InspeccionRegisterRoute.name,
            path: '/inspeccion/registrar',
            args: InspeccionRegisterRouteArgs(
                key: key, inspeccionID: inspeccionID));

  static const String name = 'InspeccionRegisterRoute';
}

class InspeccionRegisterRouteArgs {
  const InspeccionRegisterRouteArgs({this.key, required this.inspeccionID});

  final _i10.Key? key;

  final String inspeccionID;

  @override
  String toString() {
    return 'InspeccionRegisterRouteArgs{key: $key, inspeccionID: $inspeccionID}';
  }
}

/// generated route for
/// [_i8.InspeccionRegisterExteriorPage]
class InspeccionRegisterExteriorRoute
    extends _i9.PageRouteInfo<InspeccionRegisterExteriorRouteArgs> {
  InspeccionRegisterExteriorRoute({_i10.Key? key, required String inspeccionID})
      : super(InspeccionRegisterExteriorRoute.name,
            path: '/inspeccion/exteriores/registrar',
            args: InspeccionRegisterExteriorRouteArgs(
                key: key, inspeccionID: inspeccionID));

  static const String name = 'InspeccionRegisterExteriorRoute';
}

class InspeccionRegisterExteriorRouteArgs {
  const InspeccionRegisterExteriorRouteArgs(
      {this.key, required this.inspeccionID});

  final _i10.Key? key;

  final String inspeccionID;

  @override
  String toString() {
    return 'InspeccionRegisterExteriorRouteArgs{key: $key, inspeccionID: $inspeccionID}';
  }
}
