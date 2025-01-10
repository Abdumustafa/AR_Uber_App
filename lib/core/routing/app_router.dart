import 'package:ar/core/routing/routes.dart';
import 'package:ar/feature/login/ui/screen/login_screen.dart';
import 'package:flutter/material.dart'; 

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    //this argument to passed in any screen like this (argument as ClassName )
    final Arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route defind for ${settings.name}"),
            ),
          ),
        );
    }
  }
}