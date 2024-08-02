import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: AnimatedTextField(
          cursorColor: Colors.brown[800],
          animationType: Animationtype.typer,
          hintTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            overflow: TextOverflow.fade,
          ),
          hintTexts: const [
            "What's today's special brew?",
          ],
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.brown.shade800,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.brown.shade200,
                width: 1,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Search Products")),
        ],
      ),
    );
  }
}
