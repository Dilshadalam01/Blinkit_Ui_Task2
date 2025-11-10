import 'package:blinkit_ui/core/styles.dart' show AppTextStyles;
import 'package:flutter/material.dart';

class EtaBadge extends StatelessWidget {
  const EtaBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '9 minutes',
                style: AppTextStyles.header.merge(
                  const TextStyle(
                    fontSize: 35,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(width: 130),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(1),
                      child: Icon(
                        Icons.wallet_giftcard_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -3,
                    right: -2,
                    child: Container(
                      height: 20,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.black,
                            size: 15,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "HOME",
                      style: AppTextStyles.subtitle.merge(TextStyle(fontSize: 20)),

                    ),
                    TextSpan(
                      text: " - House No.1092",
                      style: AppTextStyles.subtitle.merge(TextStyle(color: Colors.black45)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4),
              Icon(Icons.arrow_drop_down, size: 25, color: Colors.black),
            ],
          )
        ],
      ),
    );
  }
}

