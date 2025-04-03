import 'package:flutter/material.dart';
import 'package:flutter_blueprint/core/exceptions/route_exception.dart';
import 'package:flutter_blueprint/features/counter/presentation/counter_page.dart';
import 'package:flutter_blueprint/features/products/products_list/view/products_page.dart';
import 'package:go_router/go_router.dart';

/*
class AppRouterO {
  static const String counter = 'counter';

  const AppRouterO._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => ProductsPage(), // CounterScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
*/

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

enum RoutePath {
  splash(path: '/'),
  // counter(path: '/counter'),
  products(path: '/products');

  const RoutePath({
    required this.path,
  });

  final String path;
}

class AppRouter {
  AppRouter(
      /*{
    required InternetConnectionStatus internetConnectionStatus,
  }*/
      )
      : goRouter = GoRouter(
          debugLogDiagnostics: true,
          navigatorKey: rootNavigatorKey,
          initialLocation: RoutePath.splash.path,
          // observers: [LoggerRouterObserver()],
          routes: [
            GoRoute(
              path: RoutePath.splash.path,
              name: RoutePath.splash.name,
              builder: (context, state) => const CounterScreen(),
            ),
            GoRoute(
              path: RoutePath.products.path,
              name: RoutePath.products.name,
              builder: (context, state) => const ProductsPage(),
            ),
          ],
        );
  late GoRouter goRouter;
}
