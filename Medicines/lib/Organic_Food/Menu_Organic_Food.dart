import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int select = 0;
  List Builderimage = [
    "asset/images/chilli.png",
    "asset/images/fruit.png",
    "asset/images/save-the-planet.png",
    "asset/images/mushroom.png",
    "asset/images/healthy-food.png",
  ];
  List buildername = [
    "Food",
    "Fruits",
    "Greens",
    "Mushrooms",
    "health",
  ];

  List gridview = [
    "asset/images/Banana1.png",
    "asset/images/Starawbwrry.png",
    "asset/images/Muish.png",
    "asset/images/Kivi.png",
  ];
  List gridviewname = [
    "Banana",
    "Starawberry",
    "Champignon",
    "Kiwi",
  ];
  List Gridviewspwcification = [
    "Ecuador",
    "Holland",
    "Ukraine",
    "New Zealand",
  ];
  List price = [
    "\$1.50",
    "\$23.10",
    "\$3.55",
    "\$2.30",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 230,
                      width: 392,
                      decoration: BoxDecoration(
                        color: Color(0xfffbab63b),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Icon(Icons.menu_open_outlined, size: 40),
                                  Spacer(),
                                  Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Color(0xfffbab63b),
                                          size: 30,
                                        ),
                                        Container(
                                          height: 36,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: Color(0xfffbab63b),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "4",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/women1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Color(0xffff6f7f9),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Colors.black, width: 0.03),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          hintText: "Search foodstuff",
                                          icon: Icon(Icons.search,
                                              color: Colors.black, size: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 185),
                      child: SizedBox(
                        height: 100,
                        width: 392,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0, 1),
                                          spreadRadius: 1,
                                          blurRadius: 2),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Center(
                                          child: Image.asset(
                                            Builderimage[index],
                                            color: Color(0xfffbab63b),
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          buildername[index],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xfffbab63b),
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Text(
                    "Popular Foodstuff",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "View all >",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 22,
                          color: Color(0xfffbab63b),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: 480,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Center(
                                  child: Image.asset(
                                    gridview[index],
                                    height: 120,
                                    width: 120,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      gridviewname[index],
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      Gridviewspwcification[index],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          price[index],
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.green,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 30),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
