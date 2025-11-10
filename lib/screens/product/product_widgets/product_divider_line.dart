import 'package:flutter/material.dart';

class ThinDivider extends StatelessWidget {
  const ThinDivider({
    super.key,
    this.size = 1,
    this.margin = EdgeInsets.zero,
    this.isVertical = false,
  });

  final double size;
  final EdgeInsets margin;
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    final double hairline =
    size == 1 ? (1.0 / MediaQuery.of(context).devicePixelRatio) : size;

    return Container(
      margin: margin,
      width: isVertical ? hairline : double.infinity,
      height: isVertical ? double.infinity : hairline,
      color: Colors.grey.shade800,
    );
  }
}
