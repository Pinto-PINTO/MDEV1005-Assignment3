import 'package:flutter/material.dart';
import 'package:mdev1005_flutter_assign3/components/calculator.dart';
import 'package:mdev1005_flutter_assign3/components/population_api.dart';
import 'package:mdev1005_flutter_assign3/components/to_do_list.dart';
import '../screens/dashboard_screen.dart';
import '../screens/welcome_screen.dart';

class Routes {
  static const String welcome = '/';
  static const String dashboard = '/dashboard';
  static const String todolist = '/todolist';
  static const String populationapi = '/populationapi';
  static const String calculator = '/calculator';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
      // Navigate to the welcome screen (default screen)
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case dashboard:
      // Navigate to the dashboard screen
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case todolist:
      // Navigate to the dashboard screen
        return MaterialPageRoute(builder: (_) => ToDoListScreen());
      case populationapi:
      // Navigate to the dashboard screen
        return MaterialPageRoute(builder: (_) => PopulationApiScreen());
      case calculator:
      // Navigate to the dashboard screen
        return MaterialPageRoute(builder: (_) => CalculatorScreen());
      default:
      // If route not found, navigate to welcome screen by default
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }

  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
