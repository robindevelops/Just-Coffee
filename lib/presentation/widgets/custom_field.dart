import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 150,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.brown[50],
        hintText: 'Enter your special requests...',
        hintStyle: GoogleFonts.poppins(
          color: Colors.brown[300],
        ),
      ),
    );
  }
}
