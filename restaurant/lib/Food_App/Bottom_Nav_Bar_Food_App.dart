import 'package:flutter/material.dart';

import 'Explore_Food_App.dart';
import 'Popular_Recipes_Food.dart';
import 'Profile_Food_App.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int select = 0;
  List screens = [
    Explore(),
    Popularrecipies(),
    Profliefood(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: BottomNavigationBar(
              currentIndex: select,
              onTap: (value) {
                setState(() {
                  select = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedIconTheme: IconThemeData(color: Color(0xfff49d49f)),
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined, size: 25), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star_border, size: 25), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline, size: 25), label: ""),
              ],
            ),
          ),
          body: screens[select]),
    );
  }
}
