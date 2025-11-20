import 'package:blinkit_ui/data/product_gridview_data.dart';
import 'package:blinkit_ui/screens/product/product_widgets/product_image_card.dart';
import 'package:flutter/material.dart';

class ProductSingleView extends StatelessWidget {
  final int index;
  final String title;

  const ProductSingleView({super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: productData[index][title],
      ),
      body: ProductCard(
        imageUrl: productData[index]['imageUrl'],
        metaText: productData[index]['metaText'],
        title: productData[index]['title'],
        price: productData[index]['price'],
        mrp: productData[index]['mrp'],
        lowStockText: productData[index]['lowStockText'],
        offerText: productData[index]['offerText'],
        timeText: productData[index]['timeText'],
      ),
    );
  }
}


