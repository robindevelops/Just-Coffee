import 'package:coffee_app/presentation/general_screens/coffeeguide_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          Spacer(),
          DrawerHeader(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 50,
              child: Icon(Icons.person),
            ),
          ),
          _createDrawerItem(
              icon: Icons.home,
              text: 'H O M E',
              onTap: () {
                Navigator.pushNamed(context, "/MainScreen");
              }),
          _createDrawerItem(
              icon: Icons.shopping_bag_rounded,
              text: 'C A R T',
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/CartScreen");
              }),
          _createDrawerItem(
            icon: Icons.person_2,
            text: 'P R O F I L E',
            onTap: () => null,
          ),
          _createDrawerItem(
              icon: Icons.coffee_maker_outlined,
              text: 'C O F F E G U I D E',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return guide();
                    },
                  ),
                );
              }),
          _createDrawerItem(
            icon: Icons.logout_outlined,
            text: 'L O G O U T',
            onTap: () => {
              Navigator.pop(context),
            },
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(icon, color: Colors.white),
      onTap: onTap,
    );
  }
}
