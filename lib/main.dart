import 'package:coffee_app/presentation/general_screens/onboarding_screen.dart';
import 'package:coffee_app/presentation/general_screens/cart_screen.dart';
import 'package:coffee_app/presentation/general_screens/detail_screen.dart';
import 'package:coffee_app/presentation/general_screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/MainScreen': (context) => MainScreen(),
        '/DetailScreen': (context) => DetailScreen(),
        '/CartScreen': (context) => CartScreen(),
      },
      home: OnboardingScreen(),
    );
  }
}
