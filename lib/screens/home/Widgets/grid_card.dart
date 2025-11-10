
import 'package:blinkit_ui/data/grid_item_data.dart';
import 'package:blinkit_ui/screens/home/Widgets/custom_grid_item.dart' show CustomGridItem;
import 'package:blinkit_ui/screens/home/Widgets/gridHeader.dart' show GridHeader;
import 'package:flutter/material.dart';
import 'package:blinkit_ui/core/Routing/app_router.dart';

class GridTitle extends StatelessWidget {
  final ScrollController controller;
  const GridTitle({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: GridHeader(text: 'Frequently bought')),

        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = gridItemsList[index];
              return CustomGridItem(
                image1: item.image1,
                image2: item.image2,
                title: item.title,
                moreText: item.moreText,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RoutePath.detail,
                    arguments: item,
                  );
                },
              );
            }, childCount: gridItemsList.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 0,
              childAspectRatio: 1.05,
            ),
          ),
        ),

        const SliverToBoxAdapter(child: GridHeader(text: 'More that you ordered')),

        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = gridItemsList[index];
              return CustomGridItem(
                image1: item.image1,
                image2: item.image2,
                title: item.title,
                moreText: item.moreText,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RoutePath.detail,
                    arguments: item,
                  );
                },
              );
            }, childCount: gridItemsList.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 0,
              childAspectRatio: 1.05,
            ),
          ),
        ),
      ],
    );
  }
}

