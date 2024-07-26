import 'package:coffee_app/presentation/widgets/custom_button.dart';
import 'package:coffee_app/presentation/widgets/size_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                      width: screenWidth * 0.25, // 25% of screen width
                      height: screenHeight,
                      color: const Color(0xFFBF9270)),
                  Container(
                    width: screenWidth * 0.75, // 75% of screen width
                    height: screenHeight,
                    color: Color(0xffEDCDBB),
                  ),
                ],
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Items Details",
                      style: GoogleFonts.dancingScript(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Cappuccino",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
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
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: screenHeight * 0.37,
                        child: Image.asset(
                          "lib/images/1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        children: [
                          SizeCard(
                            size: 'Basic',
                            icon: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/5826/5826688.png",
                              height: 25,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizeCard(
                            size: 'Medium',
                            icon: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/5826/5826688.png",
                              height: 30,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizeCard(
                            size: 'Large',
                            icon: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/5826/5826688.png",
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
