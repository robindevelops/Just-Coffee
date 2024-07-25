// ignore_for_file: file_names

import 'package:coffee_app/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDCDBB),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/128/10554/10554275.png",
              ),
              SizedBox(height: 20),
              Text(
                "Just Coffee",
                textAlign: TextAlign.center,
                style: GoogleFonts.lobster(
                  color: Colors.brown[900],
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "How do you like you coffee!!",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 90),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  minimumSize: Size(double.infinity, 55),
                  backgroundColor: Colors.brown[900],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Enter Shop",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
