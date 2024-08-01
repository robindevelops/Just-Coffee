import 'package:coffee_app/presentation/general_screens/cart_screen.dart';
import 'package:coffee_app/presentation/general_screens/coffeeguide_screen.dart';
import 'package:coffee_app/presentation/general_screens/detail_screen.dart';
import 'package:coffee_app/presentation/general_screens/history_screen.dart';
import 'package:coffee_app/presentation/general_screens/home_screen.dart';
import 'package:coffee_app/presentation/general_screens/profile_screen.dart';
import 'package:coffee_app/presentation/general_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/HomeScreen': (context) => HomeScreen(),
        '/DetailScreen': (context) => DetailScreen(),
        '/CartScreen': (context) => CartScreen(),
        '/ProfileScreen': (context) => ProfileScreen(),
        '/HistoryScreen': (context) => HistoryScreen(),
        '/GuideScreen': (context) => GuideScreen(),
      },
      home: OnboardingScreen(),
    );
  }
}
