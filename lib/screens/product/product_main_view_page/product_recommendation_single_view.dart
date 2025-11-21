import 'package:blinkit_ui/screens/product/product_widgets/product_image_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_ui/data/product_gridview_data.dart';

class ProductRecommendationSingleView extends StatelessWidget {
  const ProductRecommendationSingleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 330,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 170,
                child: ProductCard(
                  title: productData[index]['title'],
                  imageUrl: productData[index]['imageUrl'],
                  metaText: productData[index]['metaText'],
                  price: productData[index]['price'],
                  offerText: productData[index]['offerText'],
                  timeText: productData[index]['timeText'],
                  lowStockText: productData[index]['lowStockText'],
                  mrp: productData[index]['mrp'],
                  height: 160,
                  leftPadding: 20,
                ),

              );
            },
          ),
        ),
      ],
    );
  }
}
