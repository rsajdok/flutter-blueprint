import 'package:flutter/material.dart';
import 'package:flutter_blueprint/core/exceptions/route_exception.dart';
import 'package:flutter_blueprint/features/products/products_list/view/products_list_screen.dart';

class AppRouter {
  static const String counter = 'counter';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => ProductsListScreen(), // CounterScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
