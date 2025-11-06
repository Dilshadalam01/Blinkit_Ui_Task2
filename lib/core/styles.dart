import 'package:flutter/material.dart';

class AppTextStyles {
  static const header = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Roboto',
  );
  static const subtitle = TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      letterSpacing: 1
  );
}

class AppSpacing {
  // Padding constants
  static const allSmall = EdgeInsets.all(10);
  static const allMedium = EdgeInsets.all(16);
  static const allLarge = EdgeInsets.all(24);

  //Margin
  static const marginSmall = EdgeInsets.all(8);
  static const marginMedium = EdgeInsets.all(16);
  static const marginLarge = EdgeInsets.all(24);

  //Symmetric (horizontal / vertical)
  static const horizontal = EdgeInsets.symmetric(horizontal: 16);
  static const vertical = EdgeInsets.symmetric(vertical: 16);
}

/*Gridview Style */


// Text styles
class TextStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  //Text style for +n more button
  static const TextStyle moreTextStyle = TextStyle(
    color: Colors.teal,
    fontWeight: FontWeight.bold,
  );
}

// Image size constants
class ImageDimensions {
  static const double imageHeight = 65.0;
  static const double imageWidth = 80.0;
}

// Box Decoration for the grid item
class BoxDecorations {
  static BoxDecoration gridItemDecoration = BoxDecoration(
    color: Color(0xFFE7F2F2),
    borderRadius: BorderRadius.circular(15),
  );

  static BoxDecoration moreTextDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 3,
        offset: Offset(0, 2),
      ),
    ],
  );
}

/*Grid header style */
class GridHeaderStyles {
  static const TextStyle headerTextStyle = TextStyle(
    fontSize: 25,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const EdgeInsets headerPadding = EdgeInsets.only(
    left: 18,
    top: 5,
  );
}


















