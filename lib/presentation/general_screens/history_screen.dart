import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF), // White background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              "https://lottie.host/35beefc7-6652-4827-b4dc-97a26f0ccb85/iLEI20s4KJ.json",
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              "No History",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3E2723), // Dark Coffee Brown
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Keep track of your coffee orders and enjoy the journey!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6D4C41), // Medium Coffee Brown
              ),
            ),
          ],
        ),
      ),
    );
  }
}
