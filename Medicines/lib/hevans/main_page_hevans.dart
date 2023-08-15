import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainhevan extends StatefulWidget {
  const Mainhevan({Key? key}) : super(key: key);

  @override
  State<Mainhevan> createState() => _MainhevanState();
}

class _MainhevanState extends State<Mainhevan> {
  List name = [
    "Pasta",
    "Sushi",
    "Salad",
  ];
  List image = [
    "asset/images/Pasta.png",
    "asset/images/Sushi1.png",
    "asset/images/Salad.png",
  ];
  List image1 = [
    "asset/images/Hevan's food.jpeg",
    "asset/images/Grillhellhouse.jpeg",
  ];
  List buildername = [
    "Hevens's Food",
    "Grill Hell House",
  ];
  List rating = [
    "4.5",
    "4.9",
  ];
  List time = [
    "25 - 30 min",
    "40 - 45 min",
  ];
  List dollor = [
    "\$\$\$",
    "\$\$\$",
  ];
  List type = [
    "Steak",
    "Grill",
  ];
  List fish = [
    "Fish",
    "Meat",
  ];
  List type1 = [
    "Experimental",
    "Tested",
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          child: BottomNavigationBar(
            currentIndex: select,
            onTap: (value) {
              setState(() {
                select = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            // selectedItemColor: Colors.orange,
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.orange),

            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Orders"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile"),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 140,
                    width: 392,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 25,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.orange,
                                size: 32,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "800 Cheese avenue,",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "NYC",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Color(0xffff2f3f5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: "Search for food",
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      icon: Icon(Icons.search,
                                          color: Colors.grey, size: 32),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text(
                      "Something new",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 210,
                width: 392,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 20),
                          height: 200,
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfffffa012),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Text(
                                  name[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -80,
                          left: 10,
                          child: Image.asset(
                            image[index],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 280,
                width: 392,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 170,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      image1[index],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Row(
                              children: [
                                Text(
                                  buildername[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  rating[index],
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.album,
                                  color: Colors.grey,
                                  size: 8,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.watch_later_rounded,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  time[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.album,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  dollor[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1, 1),
                                        spreadRadius: 0.2,
                                        blurRadius: 0.2,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(type[index],
                                        style: TextStyle(color: Colors.grey)),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          spreadRadius: 0.2,
                                          blurRadius: 0.2)
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(fish[index],
                                        style: TextStyle(color: Colors.grey)),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 25,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1, 1),
                                          spreadRadius: 0.2,
                                          blurRadius: 0.2)
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(type1[index],
                                        style: TextStyle(color: Colors.grey)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
