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
      appBar: AppBar(
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
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
