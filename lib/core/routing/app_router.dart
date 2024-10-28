import 'package:flutter/material.dart';
import 'package:zayed_test/core/widgets/navigation_bar_view.dart';
import 'package:zayed_test/features/item_details/ui/item_details_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments as Class Name)
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.menuScreen:
        return MaterialPageRoute(builder: (_) => const NavigationBarView());
      case Routes.itemDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ItemDetailsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
            child: Text('No route defined for ${settings.name}'),
          )),
        );
    }
  }
}
