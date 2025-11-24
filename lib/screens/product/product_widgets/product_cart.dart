// import 'package:flutter/rendering.dart';
import 'package:blinkit_ui/screens/product/product_widgets/product_style.dart';
import 'package:flutter/material.dart';

class ProductAddCart extends StatefulWidget {
  final String weight;
  final int price;
  final String mrp;
  final String offText;
  final String tax;
  final VoidCallback? onAddCart;

  const ProductAddCart({
    super.key,
    required this.price,
    required this.weight,
    required this.mrp,
    required this.offText,
    required this.tax,
    this.onAddCart,
  });

  @override
  State<ProductAddCart> createState() => _ProductAddCartState();
}

class _ProductAddCartState extends State<ProductAddCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:18, vertical:3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            offset: Offset(0, 10),
            color: Colors.black26,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.weight, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, height: 1.0)),
          Row(
            children: [
              Text('₹${widget.price.toString()}', style: ProductCardStyles.price),
              SizedBox(width: 8),
              Text(widget.mrp.toString(), style: ProductCardStyles.mrp),
              SizedBox(width: 8),
              Text(widget.offText, style: ProductCardStyles.offer),
              Spacer(),
              ElevatedButton(
                onPressed: widget.onAddCart,
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: Text(
                    'Add To Cart',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
          Text(widget.tax, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

