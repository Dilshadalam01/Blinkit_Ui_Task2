import 'package:flutter/material.dart';
import 'package:blinkit_ui/core/styles.dart' show GridHeaderStyles;

class GridHeader extends StatelessWidget {
  final String text;

  const GridHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: GridHeaderStyles.headerPadding,
      child: Row(
        children: [
          Text(
            text,
            style: GridHeaderStyles.headerTextStyle,
          ),
        ],
      ),
    );
  }
}
