import 'package:flutter/material.dart';

class ProductCardStyles {
  // Colors
  static const Color pageBg = Color(0xFFF3E4D5); // similar to screenshot
  static const Color cardBg = Colors.white;
  static const Color brandGreen = Color(0xFF22C55E);
  static const Color brandBlue = Color(0xFF1565C0);
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.black54;
  static const Color dangerRed = Color(0xFFDA1E28);

  // Shape
  static const BorderRadius imageRadius = BorderRadius.all(Radius.circular(10));
  static const BorderRadius cardRadius  = BorderRadius.all(Radius.circular(16));

  // Spacing
  static const double gapXS = 6;
  static const double gapS  = 8;
  static const double gapM  = 12;

  // Shadows (subtle)
  static List<BoxShadow> softShadow = const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 10,
      offset: Offset(0, 4),
    ),
  ];

  // Text styles
  static const TextStyle meta = TextStyle(
    fontSize: 12,
    color: textSecondary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle title = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: textPrimary,
  );

  static const TextStyle time = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: textSecondary,
  );

  static const TextStyle offer = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    color: brandBlue,
  );

  static const TextStyle price = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: textPrimary,
  );

  static const TextStyle mrp = TextStyle(
    fontSize: 13,
    color: textSecondary,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle lowStock = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: dangerRed,
  );

  static const TextStyle addBtn = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    letterSpacing: .3,
  );
}
