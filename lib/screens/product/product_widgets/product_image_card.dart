import 'package:blinkit_ui/screens/product/product_widgets/product_style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String metaText;
  final String title;
  final int price;
  final int mrp;

  final String timeText;
  final String? offerText;
  final String? lowStockText;
  final VoidCallback? onAdd;
  final VoidCallback? onFav;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.metaText,
    required this.title,
    required this.price,
    required this.mrp,
    this.timeText = "17 MINS",
    this.offerText,
    this.lowStockText,
    this.onAdd,
    this.onFav,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: ProductCardStyles.cardRadius,
      ),

      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: ProductCardStyles.imageRadius,
                child: SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: ClipRRect(
                    borderRadius: ProductCardStyles.imageRadius,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[200],
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.broken_image,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Heart (top-right)
              Positioned(
                right: 8,
                top: 8,
                child: GestureDetector(
                  onTap: onFav,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Positioned(
                right: 5,
                bottom: 5,
                child: GestureDetector(
                  onTap: onAdd,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: ProductCardStyles.brandGreen,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text("ADD", style: ProductCardStyles.addBtn),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: ProductCardStyles.gapM),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              metaText,
              style: ProductCardStyles.meta,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          const SizedBox(height: ProductCardStyles.gapXS),

          Text(
            title,
            style: ProductCardStyles.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          if (lowStockText != null) ...[
            const SizedBox(height: ProductCardStyles.gapXS),
            Text(lowStockText!, style: ProductCardStyles.lowStock),
          ],

          const SizedBox(height: ProductCardStyles.gapS),

          Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                size: 14,
                color: Colors.amber[800],
              ),
              const SizedBox(width: 4),
              Text(timeText, style: ProductCardStyles.time),
              const Spacer(),
              if (offerText != null)
                Text(offerText!, style: ProductCardStyles.offer),
            ],
          ),
          const SizedBox(height: ProductCardStyles.gapS),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("₹$price", style: ProductCardStyles.price),
              const SizedBox(width: 8),
              Text("MRP ₹$mrp", style: ProductCardStyles.mrp),
            ],
          ),
        ],
      ),
    );
  }
}
