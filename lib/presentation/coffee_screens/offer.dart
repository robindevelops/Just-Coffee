import 'package:coffee_app/presentation/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CoffeeOfferTile();
        },
      ),
    );
  }
}

class CoffeeOfferTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Banner(
      color: Colors.red,
      message: '20%off',
      location: BannerLocation.topEnd,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        color: const Color(0xFFBF9270),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'lib/images/1.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 3),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy 1 Get 1 Free',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[700],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Enjoy our special offer: buy one coffee and get one free!',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[350],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          '\$2.50',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[800],
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '\$5.00',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
