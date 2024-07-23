// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Colors extends StatelessWidget {
  const Colors({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(228, 195, 121, 1),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(100, 85, 65, 1),
        ),
      ),
    );
  }
}
