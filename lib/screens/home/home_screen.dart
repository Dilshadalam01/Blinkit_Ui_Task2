import 'package:blinkit_ui/screens/home/Widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_ui/screens/home/Widgets/grid_card.dart' show GridTitle;
import 'package:blinkit_ui/screens/home/Widgets/custom_button.dart';
import 'package:blinkit_ui/screens/home/Widgets/quick_action_dock.dart' show QuickActionsDock;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const HomeHeader(),
              Expanded(child: GridTitle(controller: _scroll)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: QuickActionsDock(
              controller: _scroll,
              items: const [
                ActionItem(icon: Icons.house_outlined, label: 'Home'),
                ActionItem(icon: Icons.shopping_bag_outlined, label: 'Order Again'),
                ActionItem(icon: Icons.apps_rounded, label: 'Categories'),
                ActionItem(icon: Icons.print_outlined, label: 'Print'),
              ],
              onChanged: (i) {

              },
            ),
          ),
        ],
      ),
    );
  }
}
