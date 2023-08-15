import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Cart_Fruit.dart';
import 'Filters_Food.dart';

class Fruit extends StatefulWidget {
  const Fruit({Key? key}) : super(key: key);

  @override
  State<Fruit> createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  int select = 0;
  List screens = [
    const Filterfood(),
    const Cart(),
    const Text("sdfghj"),
    const Text("sdfghj"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            hoverColor: Colors.grey, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 20,
            curve: Curves.easeInExpo, // tab animation curves
            duration:
                const Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.white, // selected icon and text color
            iconSize: 20, // tab button icon size
            tabBackgroundColor: Colors.orange, // selected tab background color
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 10), // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
                text: 'Shopping',
              ),
              GButton(
                icon: Icons.notifications_none,
                text: 'Notificattion',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              )
            ],
          ),
        ),
        body: screens[select],
      ),
    );
  }
}
