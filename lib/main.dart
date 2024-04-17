import 'package:flutter/material.dart';
import 'package:mdev1005_flutter_assign3/screens/welcome_screen.dart';
import 'package:mdev1005_flutter_assign3/routes/routes.dart'; // Import the Routes class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MDEV1005 Assignment 3 Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.welcome, // Initial route to the welcome screen
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
