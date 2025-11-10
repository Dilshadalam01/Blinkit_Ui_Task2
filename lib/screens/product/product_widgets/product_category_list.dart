import 'package:flutter/material.dart';
import 'package:blinkit_ui/screens/product/product_widgets/product_sidebar_grid.dart';




class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;


  final List<Map<String, String>> categories = [
    {
      "title": "Fresh Vegetables",
      "image": "https://images.unsplash.com/photo-1582515073490-dc81b0f8d64a?w=400"
    },
    {
      "title": "Fresh Fruits",
      "image": "https://images.unsplash.com/photo-1574226516831-e1dff420e12e?w=400"
    },
    {
      "title": "Exotic Fruits & Veggies",
      "image": "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?w=400"
    },
    {
      "title": "Dairy & Breakfast",
      "image": "https://images.unsplash.com/photo-1563636619-b3dd75a2bdcc?w=400"
    },
    {
      "title": "Tea, Coffee & Drinks",
      "image": "https://images.unsplash.com/photo-1534809027301-7f93c1b4f54b?w=400"
    },
    {
      "title": "Instant & Frozen Food",
      "image": "https://images.unsplash.com/photo-1589308078054-8325d2d126e8?w=400"
    },
    {
      "title": "Dry Fruits & Masala",
      "image": "https://images.unsplash.com/photo-1575936123452-b67c3203c357?w=400"
    },
    {
      "title": "Household Essentials",
      "image": "https://images.unsplash.com/photo-1563201515-adbe35c669c5?w=400"
    },
    {
      "title": "Cleaning & Bathroom",
      "image": "https://images.unsplash.com/photo-1590579491624-acdfadc3d5d1?w=400"
    },
    {
      "title": "Beauty & Personal Care",
      "image": "https://images.unsplash.com/photo-1596464716127-f4dcda6d12a5?w=400"
    },
    {
      "title": "Baby Care",
      "image": "https://images.unsplash.com/photo-1504593811423-6dd665756598?w=400"
    },
    {
      "title": "Meat & Eggs",
      "image": "https://images.unsplash.com/photo-1598511723714-9f5357924d41?w=400"
    },

  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.white,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CategoryItem(
              imagePath: category['image']!,
              title: category['title']!,
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() => selectedIndex = index);
              },
            ),
          );
        },
      ),
    );
  }
}
