import 'package:coffee_app/presentation/general_screens/main_screen/contents/history_screen.dart';
import 'package:coffee_app/presentation/general_screens/main_screen/contents/home_screen.dart';
import 'package:coffee_app/presentation/general_screens/main_screen/contents/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:coffee_app/presentation/themes/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: getScreen(),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
            child: GNav(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              selectedIndex: _selectedIndex,
              backgroundColor: Colors.black,
              color: Colors.grey,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              onTabChange: (index) {
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
              gap: 6,
              padding: EdgeInsets.all(16),
              tabs: const [
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

  Widget getScreen() {
    switch (_selectedIndex) {
      case 0:
        return ProfileScreen();
      case 1:
        return HomeScreen();
      case 2:
        return HistoryScreen();
      default:
        return HomeScreen();
    }
  }
}
