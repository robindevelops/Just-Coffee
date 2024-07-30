import 'package:coffee_app/presentation/onboarding.dart';
import 'package:coffee_app/presentation/screens/cart_screen.dart';
import 'package:coffee_app/presentation/screens/detail_screen.dart';
import 'package:coffee_app/presentation/screens/home_screen.dart';
import 'package:coffee_app/presentation/screens/welcome_screen.dart';
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
        '/WelcomScreen': (context) => WelcomScreen(),
        '/HomeScreen': (context) => HomeScreen(),
        '/DetailScreen': (context) => DetailScreen(),
        '/CartScreen': (context) => CartScreen(),
      },
      home: Onboarding(),
    );
  }
}
