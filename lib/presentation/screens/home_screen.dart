import 'package:coffee_app/presentation/coffee_screens/coffe.dart';
import 'package:coffee_app/presentation/coffee_screens/menu.dart';
import 'package:coffee_app/presentation/coffee_screens/offer.dart';
import 'package:coffee_app/presentation/themes/colors.dart';
import 'package:coffee_app/presentation/widgets/custom_appbar.dart';
import 'package:coffee_app/presentation/widgets/offer_card.dart';
import 'package:coffee_app/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: CustomAppBar(),
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
                Tab(text: "Coffee"),
                Tab(text: "Menu"),
                Tab(text: "Offer"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Coffee(),
                  Menu(),
                  Offer(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
            child: GNav(
              selectedIndex: 1,
              backgroundColor: Colors.black,
              color: Colors.grey,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              onTabChange: (value) {
                print(value);
              },
              gap: 6,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  text: "Profile",
                  icon: Icons.person_2,
                ),
                GButton(
                  text: "Home",
                  icon: Icons.home_filled,
                ),
                GButton(
                  text: "History",
                  icon: Icons.history,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
