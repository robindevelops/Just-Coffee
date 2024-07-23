import 'package:coffee_app/Themes/Colors.dart';
import 'package:coffee_app/Widgets/CoffeCard.dart';
import 'package:coffee_app/Widgets/OfferCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: base,
      appBar: AppBar(
        backgroundColor: base,
        centerTitle: true,
        leading: const CircleAvatar(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Just Coffee",
              style: GoogleFonts.bebasNeue(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
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
      body: Column(
        children: [
          OfferCard(),
          SizedBox(height: 15),
          Divider(color: Colors.brown),
          TabBar(
            labelColor: Colors.brown[900],
            dividerColor: Colors.transparent,
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: const [
              Tab(text: "Home"),
              Tab(text: "Menu"),
              Tab(text: "Offers"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                buildHomeTab(),
                buildMenuTab(),
                buildOffersTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHomeTab() {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 10 / 9,
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 80,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return CoffeeCard();
      },
    );
  }

  Widget buildMenuTab() {
    return Center(child: Text("Menu Content"));
  }

  Widget buildOffersTab() {
    return Center(child: Text("Offers Content"));
  }
}
