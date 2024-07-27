import 'package:coffee_app/presentation/screens/cart_screen.dart';
import 'package:coffee_app/presentation/screens/detail_screen.dart';
import 'package:coffee_app/presentation/themes/colors.dart';
import 'package:coffee_app/presentation/widgets/offer_card.dart';
import 'package:coffee_app/presentation/widgets/coffe_card.dart';
import 'package:coffee_app/presentation/widgets/custom_drawer.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CartScreen();
                    },
                  ),
                );
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: [
            OfferCard(),
            TabBar(
              labelStyle: GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 1),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.brown[900],
              dividerColor: Colors.transparent,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(text: "Coffee "),
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
        mainAxisSpacing: 90,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen();
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
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 110),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 10 / 9,
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 90,
      ),
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen();
                },
              ),
            );
          },
          child: CoffeeCard(),
        );
      },
    );
  }
}
