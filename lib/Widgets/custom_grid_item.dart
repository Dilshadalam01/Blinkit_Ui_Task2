import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  final String image1;
  final String image2;
  final String title;
  final String? moreText; // e.g., "+7 more"

  const CustomGridItem({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    this.moreText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            width: 150,
            height: 180,
            decoration: BoxDecoration(
              color: const Color(0xFFE7F2F2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        image1,
                        height: 65,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 3),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        image2,
                        height: 65,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Center( // 👈 ensures the text is centered
                  child: Text(
                    title,
                    textAlign: TextAlign.center, // 👈 centers multiline text too
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (moreText != null && moreText!.isNotEmpty)
            Positioned(
            top: 55,
            left: 32,
            right: 32,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                moreText!,
                style: const TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
