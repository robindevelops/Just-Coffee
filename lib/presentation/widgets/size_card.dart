// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SizeCard extends StatelessWidget {
  String size;
  SizeCard({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown),
      ),
      height: 50,
      width: 50,
      child: Center(
        child: Text(
          size,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
