// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:allemant_peritos/app.dart';
import 'package:allemant_peritos/application/repository/authentication_repository.dart';
import 'package:allemant_peritos/application/repository/user_repository.dart';
import 'package:allemant_peritos/core/http/http_methods.dart';
import 'package:allemant_peritos/features/inspeccion/data/datasources/inspeccion_remote_datasource.dart';
import 'package:allemant_peritos/features/inspeccion/data/repositories/inspeccion_repository.dart';
import 'package:allemant_peritos/features/inspeccion/data/repositories/location_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final inspectionRemoteDatasource =
      InspeccionRemoteDataSource(helper: HttpMethodsType());
  final inspeccionRepository =
      InspeccionRepository(remoteDataSource: inspectionRemoteDatasource);
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(
      authenticationRepository: AuthenticationRepository(),
      userLocationRepository: UserLocationImpl(),
      inspeccionRepository: inspeccionRepository,
      userRepository: UserRepository(),
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
