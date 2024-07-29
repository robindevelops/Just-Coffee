import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      toolbarHeight: 80,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Just Coffee",
            style: GoogleFonts.bebasNeue(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "📍14th Street New York, USA",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/CartScreen");
          },
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
