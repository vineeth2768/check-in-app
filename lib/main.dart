import 'package:check_in_app/routes/app_routes.dart';
import 'package:check_in_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: MaterialApp.router(
        title: 'Work Management App',
        theme: AppTheme.lightTheme,
        routerDelegate: appRouter.routerDelegate,
        routeInformationParser: appRouter.routeInformationParser,
        routeInformationProvider: appRouter.routeInformationProvider,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
