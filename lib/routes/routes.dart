import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';
import '../screens/welcome_screen.dart';

class Routes {
  static const String welcome = '/';
  static const String dashboard = '/dashboard';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
      // Navigate to the welcome screen (default screen)
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case dashboard:
      // Navigate to the dashboard screen
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      default:
      // If route not found, navigate to welcome screen by default
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }

  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
