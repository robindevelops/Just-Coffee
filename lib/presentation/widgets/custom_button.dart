import 'package:coffee_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
