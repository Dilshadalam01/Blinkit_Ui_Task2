import 'package:flutter/material.dart';
import 'package:blinkit_ui/core/styles.dart'
    show AppTextStyles ;
import 'package:blinkit_ui/screens/home/Widgets/eta_badge.dart';
import 'package:blinkit_ui/screens/home/Widgets/search_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.yellow.shade700,
            Colors.yellow.shade300,
            Colors.grey.shade100,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(top: 10,left: 10,right: 10),
          child: Wrap(
            children: [
              Text(
                'BlinkIt in',
                style: AppTextStyles.header.copyWith(
                  decoration: TextDecoration.none,
                ),
              ),

              //Home Design and Text
              const EtaBadge(),

              //Search Bar Design
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CustomSearchBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
