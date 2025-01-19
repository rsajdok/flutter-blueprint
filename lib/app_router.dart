import 'package:flutter/material.dart';
import 'package:flutter_blueprint/core/exceptions/route_exception.dart';
import 'package:flutter_blueprint/features/counter/presentation/counter_page.dart';

class AppRouter {
  static const String counter = 'counter';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => CounterScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
