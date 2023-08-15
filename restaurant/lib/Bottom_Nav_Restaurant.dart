import 'package:flutter/material.dart';

import 'Home_Page_Restaurant.dart';
import 'Search_Restaurant.dart';

class Bottomnavrestaurant extends StatefulWidget {
  const Bottomnavrestaurant({Key? key}) : super(key: key);

  @override
  State<Bottomnavrestaurant> createState() => _HomepageState();
}

class _HomepageState extends State<Bottomnavrestaurant> {
  int select = 0;
  List screens = [
    Homepage(),
    Search(),
    Text("Menu Screen"),
    Text("Favorite Screen"),
    Text("Profile Screen"),
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
              backgroundColor: Colors.black,
              selectedIconTheme: IconThemeData(color: Colors.orange),
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined, size: 25), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, size: 25), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu, size: 25), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border, size: 25), label: ""),
                BottomNavigationBarItem(
                    icon: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image/Person.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                        ),
                        Positioned(
                          right: -5,
                          top: -5,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                                border:
                                    Border.all(color: Colors.black, width: 4)),
                          ),
                        ),
                      ],
                    ),
                    label: ""),
              ],
            ),
          ),
          body: screens[select]),
    );
  }
}
