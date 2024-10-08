import 'package:coffee_app/presentation/widgets/custom_field.dart';
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
    int selectedQuantity = 1;
    String selectedSize = 'Medium';
    String selectedMilk = 'Farm';

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Quantity",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: Icon(Icons.remove, color: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    if (selectedQuantity > 0) {
                                      selectedQuantity--;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "$selectedQuantity",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    selectedQuantity++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(thickness: 2),
                    Text(
                      "Select Size",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: ['Small', 'Medium', 'Large'].map(
                        (size) {
                          return ChoiceChip(
                            side: BorderSide.none,
                            label: Text(
                              size,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            selected: selectedSize == size,
                            onSelected: (bool selected) {
                              setState(() {
                                selectedSize = selected ? size : selectedSize;
                              });
                            },
                            selectedColor: Colors.orange[400],
                            backgroundColor: Colors.grey[350],
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(height: 10),
                    Divider(thickness: 2),
                    SizedBox(height: 10),
                    Text(
                      "Select Milk",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children:
                          ['Farm', 'Coconut', 'Almond', 'Gluten-Free'].map(
                        (milk) {
                          return ChoiceChip(
                            side: BorderSide.none,
                            label: Text(
                              milk,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            selected: selectedMilk == milk,
                            onSelected: (bool selected) {
                              setState(() {
                                selectedMilk = selected ? milk : selectedMilk;
                              });
                            },
                            selectedColor: Colors.orange[400],
                            backgroundColor: Colors.grey[350],
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(height: 10),
                    Divider(thickness: 2),
                    SizedBox(height: 10),
                    Text(
                      "Any Special Request?",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(),
                    SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Color(0xFF55352F),
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                        ),
                        child: Text(
                          'Add To Cart',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
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
                color: Color(0xFFEDCDBB),
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
                  SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Cappuccino",
                          style: GoogleFonts.poiretOne(
                            letterSpacing: 1,
                            fontSize: 30,
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
                          style: GoogleFonts.sen(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
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
                          SizeCard(text: 'Hot'),
                          SizedBox(height: 15),
                          SizeCard(text: 'Strong'),
                          SizedBox(height: 15),
                          SizeCard(text: 'Tasty'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Center(
                    child: GestureDetector(
                      onTap: _showAddToCartBottomSheet,
                      child: Container(
                        height: 60.0,
                        width: 300.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFEDCDBB),
                              Color(0xFFBF9270),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10.0,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Text(
                          "Add to Cart",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
