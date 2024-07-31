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
      maxLines: 3,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: Colors.brown[50],
        hintText: 'Enter your special requests...',
        hintStyle: GoogleFonts.poppins(
          color: Colors.brown,
        ),
      ),
    );
  }
}
