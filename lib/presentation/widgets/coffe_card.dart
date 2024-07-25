import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.brown[900],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Cappuccino",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[400],
                  ),
                ),
                Text(
                  "Hot Coffee",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$20",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[400],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      width: 45,
                      height: 40,
                      child: Icon(Icons.add),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 30,
          bottom: 100,
          child: Image.asset(
            "lib/images/1.png",
            height: 135,
          ),
        ),
      ],
    );
  }
}
