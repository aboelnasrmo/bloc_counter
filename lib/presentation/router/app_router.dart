import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progoneblocpract/business_logic/cubits/cubit/counter_cubit.dart';
import 'package:progoneblocpract/presentation/screens/home_screen.dart';
import 'package:progoneblocpract/presentation/screens/second_screen.dart';
import 'package:progoneblocpract/presentation/screens/third_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: HomeScreen(),
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const SecondScreen(),
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const ThirdScreen(),
          ),
        );
      // break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
