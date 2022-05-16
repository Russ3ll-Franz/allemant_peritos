import 'package:allemant_peritos/core/app_start_page.dart';
import 'package:allemant_peritos/features/inspeccion/presentation/routes/routes.dart';
import 'package:allemant_peritos/features/pages/routes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: AppStartPage, initial: true),
  homeRouter,
  signInRouter,
  inspeccionRouter,
  detailInspeccionRouter,
  inspeccionDetailRouter,
  inspeccionRegisterRouter,
  inspeccionExteriorRegisterRouter
])
class $AppRouter {}
