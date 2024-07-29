import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<String> items = [
    "Cappuccino",
    "Latte",
    "Espresso",
    "Mocha",
    "Americano",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: GoogleFonts.aBeeZee(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Slidable(
                    startActionPane: ActionPane(
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                          onPressed: (context) {},
                        ),
                      ],
                    ),
                    child: ListTile(
                      minVerticalPadding: 16.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Color(0xffEDCDBB),
                      leading: Image.asset("lib/images/1.png", height: 100),
                      title: Text(
                        items[index],
                        style: GoogleFonts.aboreto(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[700],
                        ),
                      ),
                      subtitle: Text(
                        'Description of ${items[index]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "SubTotal",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "\$60",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Divider(indent: 50, endIndent: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Discount",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "\$40",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  Divider(indent: 40, endIndent: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "\$20",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: TextStyle(color: Colors.black),
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
