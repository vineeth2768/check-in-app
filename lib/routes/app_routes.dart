import 'package:check_in_app/routes/route_name.dart';
import 'package:check_in_app/screens/landing_page.dart';
import 'package:check_in_app/screens/login.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRouteName.login,
  routes: [
    GoRoute(
      path: AppRouteName.login,
      name: AppRouteName.loginName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRouteName.landing,
      name: AppRouteName.landingName,
      builder: (context, state) => LandingPage(),
    ),
  ],
);
