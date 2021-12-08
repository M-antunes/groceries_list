import 'package:flutter/material.dart';
import 'package:groceries_list/modules/your_lists/screens/your_lists.dart';
import 'package:groceries_list/modules/login/screens/email_login.dart';
import 'package:groceries_list/shared/constants/app_routes.dart';

abstract class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const YourLists(),
          settings: routeSettings,
        );
      case AppRoutes.emailLogin:
        return MaterialPageRoute(
          builder: (_) => const EmailLogin(),
          settings: routeSettings,
        );
      default:
        throw Exception();
    }
  }
}
