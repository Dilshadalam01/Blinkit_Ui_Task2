import 'package:flutter/material.dart';
import 'package:blinkit_ui/core/Routing/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePath.home,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
