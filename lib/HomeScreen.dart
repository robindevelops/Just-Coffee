import 'package:coffee_app/DetailScreen.dart';
import 'package:coffee_app/Widgets/CoffeCard.dart';
import 'package:coffee_app/Widgets/OfferCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFEDCDBB),
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: CircleAvatar(),
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
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.shopping_bag_outlined, color: Colors.white),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            OfferCard(),
            TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.brown[900],
              dividerColor: Colors.transparent,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(text: "Home"),
                Tab(text: "Menu"),
                Tab(text: "Offer"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildHomeTab(),
                  buildMenuTab(),
                  buildOffersTab(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "Bag",
              icon: Icon(Icons.shopping_bag),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHomeTab() {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 110),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 10 / 9,
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 95,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Detailscreen();
                },
              ),
            );
          },
          child: CoffeeCard(),
        );
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
