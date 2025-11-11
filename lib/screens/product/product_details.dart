import 'package:blinkit_ui/core/styles.dart';
import 'package:blinkit_ui/data/grid_item_data.dart';
import 'package:blinkit_ui/data/product_gridview_data.dart'
    show ProductGridviewData;
import 'package:blinkit_ui/screens/product/product_widgets/product_divider_line.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final GridItemData? item;

  const ProductDetails({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    final titleText = item?.title ?? 'Product';
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        titleSpacing: 0,
        toolbarHeight: 64,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 0, top: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleText,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Delivering to :',
                        style: AppTextStyles.subtitle.merge(
                          TextStyle(color: Color.fromARGB(255, 11, 85, 114)),
                        ),
                      ),
                      TextSpan(
                        text: ' Industrial Area,..',
                        style: AppTextStyles.subtitle.merge(
                          TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(Icons.keyboard_arrow_down, size: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: ThinDivider(),
        ),
      ),
      body: Row(children: [const Expanded(child: ProductGridviewData())]),
    );
  }
}
