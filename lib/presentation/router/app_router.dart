import 'package:flutter/material.dart';

import 'package:progoneblocpract/presentation/screens/home_screen.dart';
import 'package:progoneblocpract/presentation/screens/second_screen.dart';
import 'package:progoneblocpract/presentation/screens/third_screen.dart';

class AppRouter {
  Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(),
        );
    }
    return null;
  }
}
