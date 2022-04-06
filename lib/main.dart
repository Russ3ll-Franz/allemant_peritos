import 'dart:developer';
import 'dart:io';

import 'package:allemant_peritos/app.dart';
import 'package:allemant_peritos/application/repository/authentication_repository.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:allemant_peritos/features/inspeccion/data/datasources/inspeccion_remote_datasource.dart';
import 'package:allemant_peritos/features/inspeccion/data/repositories/inspeccion_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/http/http_override.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
/*   configureDependencies();
 */
  final inspectionRemoteDatasource =
      InspeccionRemoteDataSource(helper: HttpMethodsType());
  final inspeccionRepository =
      InspeccionRepository(remoteDataSource: inspectionRemoteDatasource);

  runApp(MyApp(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
    inspeccionRepository: inspeccionRepository,
  ));
}
