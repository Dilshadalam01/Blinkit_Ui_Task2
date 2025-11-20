import 'package:blinkit_ui/data/product_gridview_data.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_ui/screens/home/home_screen.dart';
import 'package:blinkit_ui/screens/product/product_details.dart';
import 'package:blinkit_ui/data/grid_item_data.dart';
import 'package:blinkit_ui/screens/product/product_main_view_page/product_single_view.dart';

class RoutePath {
  static const home = '/';
  static const detail = '/detail';
  static const singleProductPage= '/single_product_page';
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

    case RoutePath.singleProductPage:
      final tappedIndex = settings.arguments as int;
      final product = productData[tappedIndex];
        return MaterialPageRoute(
          builder: (_) =>  ProductSingleView(
              index: tappedIndex,
              title: product['title']
          ),
        );

    default:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
  }
}


