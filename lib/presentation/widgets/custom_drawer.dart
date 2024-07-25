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
            onTap: () => null,
          ),
          _createDrawerItem(
            icon: Icons.favorite_sharp,
            text: 'F A V O U R I T E',
            onTap: () => null,
          ),
          _createDrawerItem(
            icon: Icons.shopping_bag_rounded,
            text: 'C A R T',
            onTap: () => null,
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'S E T T I N G S',
            onTap: () => null,
          ),
          _createDrawerItem(
            icon: Icons.logout_outlined,
            text: 'L O G O U T',
            onTap: () => null,
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
