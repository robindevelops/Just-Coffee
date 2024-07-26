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
  void _showAddToCartBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 400,
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'Add to Cart',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[900],
                ),
              ),
              Spacer(),
              CustomButton(text: "Add to Bag")
            ],
          ),
        );
      },
    );
  }

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
                    width: screenWidth * 0.25,
                    height: screenHeight,
                    color: const Color(0xFFBF9270),
                  ),
                  Container(
                    width: screenWidth * 0.75,
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
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: _showAddToCartBottomSheet,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[900], // background color
                      ),
                      child: Text(
                        'Add to Cart',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
