import 'package:allemant_peritos/features/pages/home_page.dart';
import 'package:allemant_peritos/features/pages/sign_in_page.dart';
import 'package:auto_route/auto_route.dart';

const homeRouter = AutoRoute(path: '/home', page: HomePage);

const signInRouter = AutoRoute(
  path: '/signIn',
  page: SignInPage,
);
