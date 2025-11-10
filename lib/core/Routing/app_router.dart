import 'package:flutter/material.dart';
import 'package:blinkit_ui/screens/home/home_screen.dart';
import 'package:blinkit_ui/screens/product/product_details.dart';
import 'package:blinkit_ui/data/grid_item_data.dart';

class RoutePath {
  static const home = '/';
  static const detail = '/detail';
}

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case RoutePath.home:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );

    case RoutePath.detail:
      final args = settings.arguments;
      if (args is GridItemData) {
        return MaterialPageRoute(
          builder: (_) => ProductDetails(item: args),
        );
      }
      return MaterialPageRoute(
        builder: (_) => const ProductDetails(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
  }
}
