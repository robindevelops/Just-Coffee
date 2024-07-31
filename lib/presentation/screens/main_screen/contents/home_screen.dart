import 'package:coffee_app/presentation/coffee_screens/coffe.dart';
import 'package:coffee_app/presentation/coffee_screens/menu.dart';
import 'package:coffee_app/presentation/coffee_screens/offer.dart';
import 'package:coffee_app/presentation/themes/colors.dart';
import 'package:coffee_app/presentation/widgets/custom_appbar.dart';
import 'package:coffee_app/presentation/widgets/custom_drawer.dart';
import 'package:coffee_app/presentation/widgets/offer_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      backgroundColor: backgroundColor,
      body: DefaultTabController(
        length: 3,
        child: Column(
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
      ),
    );
  }
}
