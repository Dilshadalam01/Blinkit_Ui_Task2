import 'package:blinkit_ui/data/product_gridview_data.dart';
import 'package:blinkit_ui/screens/home/Widgets/gridHeader.dart'
    show GridHeader;
import 'package:blinkit_ui/screens/product/product_widgets/product_image_card.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_ui/core/styles.dart' show GridHeaderStyles;
import 'package:blinkit_ui/screens/product/product_main_view_page/product_recommendation_single_view.dart';
import 'package:blinkit_ui/screens/product/product_widgets/product_cart.dart';

class ProductSingleView extends StatelessWidget {
  final int index;
  final String title;

  const ProductSingleView({
    super.key,
    required this.index,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          productData[index]['title'],
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCard(
              imageUrl: productData[index]['imageUrl'],
              metaText: productData[index]['metaText'],
              title: productData[index]['title'],
              price: productData[index]['price'],
              mrp: productData[index]['mrp'],
              lowStockText: productData[index]['lowStockText'],
              offerText: productData[index]['offerText'],
              timeText: productData[index]['timeText'],
              height: 240,
              leftPadding: 18,
              rightPadding: 18,
            ),
            Padding(
              padding: GridHeaderStyles.headerPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'View product details',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade800,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 35,
                        color: Colors.green.shade800,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GridHeader(text: 'Top Products in the category'),
            SizedBox(height: 10),
            ProductRecommendationSingleView(key: key),
            ProductAddCart(
              weight: '100 g',
              mrp: 'MRP ₹66',
              price: 22,
              offText: '23% OFF',
              tax: 'inclusive of all tax',
            ),
          ],
        ),
      ),
    );
  }
}