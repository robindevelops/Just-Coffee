import 'package:coffee_app/Themes/Colors.dart';
import 'package:coffee_app/Widgets/OfferCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: base,
      appBar: AppBar(
        backgroundColor: base,
        centerTitle: true,
        leading: const CircleAvatar(),
        title: const Column(
          children: [
            Text("Just Coffee"),
            Text(
              "14th Street New York, USA",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            OfferCard(),
            SizedBox(height: 15),
            Divider(
              color: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
