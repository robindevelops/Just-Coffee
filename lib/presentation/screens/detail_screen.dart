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

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 900,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add to Cart',
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[700],
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.brown[200]),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Quantity",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[700],
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown[100],
                              child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.brown[700],
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (selectedQuantity > 0)
                                        selectedQuantity--;
                                    },
                                  );
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
                              backgroundColor: Colors.brown[100],
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.brown[700]),
                                onPressed: () {
                                  setState(
                                    () {
                                      selectedQuantity++;
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Select Size",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown[700],
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 10.0,
                      children: ['Small', 'Medium', 'Large'].map(
                        (size) {
                          return ChoiceChip(
                            label: Text(
                              size,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: selectedSize == size
                                    ? Colors.white
                                    : Colors.brown[900],
                              ),
                            ),
                            selected: selectedSize == size,
                            onSelected: (bool selected) {
                              setState(
                                () {
                                  selectedSize = selected ? size : selectedSize;
                                },
                              );
                            },
                            selectedColor: Colors.brown[600],
                            backgroundColor: Colors.brown[100],
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15),
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Any Special Request",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown[700],
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
                          backgroundColor: Color.fromARGB(255, 85, 53, 47),
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                        ),
                        child: Text(
                          'Checkout',
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
                    child: ElevatedButton(
                      onPressed: _showAddToCartBottomSheet,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.brown[900],
                      ),
                      child: Text(
                        'Shop Now',
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
          ),
        ],
      ),
    );
  }
}
