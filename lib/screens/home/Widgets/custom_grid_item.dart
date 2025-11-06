import 'package:blinkit_ui/core/styles.dart'
    show BoxDecorations, ImageDimensions, TextStyles;
import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  final String image1;
  final String image2;
  final String title;
  final String? moreText;
  final EdgeInsetsGeometry padding;

  const CustomGridItem({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    this.moreText,
    this.padding = const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: padding,
            decoration: BoxDecorations.gridItemDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            image1,
                            height: ImageDimensions.imageHeight,
                            width: ImageDimensions.imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            image2,
                            height: ImageDimensions.imageHeight,
                            width: ImageDimensions.imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Flexible(
                  fit: FlexFit.loose,
                  child: Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyles.titleStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),

          if (moreText != null && moreText!.isNotEmpty)
            Positioned(
              top: ImageDimensions.imageHeight - 15,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 8,
                  ),
                  decoration: BoxDecorations.moreTextDecoration,
                  child: Text(
                    moreText!,
                    style: TextStyles.moreTextStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
