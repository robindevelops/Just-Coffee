// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeCard extends StatelessWidget {
  final String size;
  final Image icon;

  SizeCard({super.key, required this.size, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown),
        borderRadius: BorderRadius.circular(5),
      ),
      height: 80,
      width: 75,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(height: 5),
            Text(
              size,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
              // style: TextStyle(
              //   fontSize: 16,
              //   fontWeight: FontWeight.bold,
              //   color: Colors.brown.shade900,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
