import 'package:coffee_app/Widgets/SizeCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    double screeWidth = MediaQuery.of(context).size.width;
    double screeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: screeHeight, color: Colors.brown[900]),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: screeHeight,
                      color: Color.fromARGB(255, 229, 162, 61),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Text(
                  "Items Details",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Cappiciono",
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900],
                  ),
                ),
                Text(
                  "Hot Coffee",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.brown[500],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "\$70",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "lib/images/1.png",
                      height: 300,
                    ),
                    Column(
                      children: [
                        SizeCard(size: 'S'),
                        SizedBox(height: 10),
                        SizeCard(size: 'L'),
                        SizedBox(height: 10),
                        SizeCard(size: 'M'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 90),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.brown),
                  ),
                  height: 40,
                  width: 100,
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      ),
                      Text("0"),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    backgroundColor: Colors.brown[900],
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 162, 61),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
