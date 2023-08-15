import 'package:flutter/material.dart';

class Firstpagetoast extends StatelessWidget {
  Firstpagetoast({Key? key}) : super(key: key);

  List name = [
    "Breakfast",
    "Sets",
    "Sushi",
    "Salads",
    "Other",
  ];
  List image = [
    "assets/images/salad.png",
    "assets/images/sets.png",
    "assets/images/sushi.png",
    "assets/images/salad.png",
    "assets/images/other.png",
  ];
  List horizontalimage = [
    "assets/images/cheese_pancakes-removebg-preview (1).png",
    "assets/images/Toastwithhum.png",
    "assets/images/Cheese2.png",
    "assets/images/Toastwithhum.png",
  ];
  List cname = [
    "Sale",
    "New",
    "New",
    "New",
  ];
  List hname = [
    "Cheese Pancakes",
    "Toast With Hum",
    "Cakes",
    "Other",
  ];

  List price = [
    "\$4,29",
    "\$3,28",
    "\$5,25",
    "\$8,10",
  ];

  List weight = [
    "⚫ 140g",
    "⚫ 250g",
    "⚫ 140g",
    "⚫ 240g",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff253360),
        body: Column(
          children: [
            Container(
              height: 750,
              width: 392,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 10),
                          child: Icon(Icons.shopping_bag_outlined, size: 30),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Our menu",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 1),
                          child: Text(
                            "in the restaurant on",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Text(
                            "Nevsky Prospekt 42",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 32),
                          child: Container(
                            height: 150,
                            width: 360,
                            decoration: BoxDecoration(
                              color: Color(0xfffe6f0fa),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Padding(
                                        padding: const EdgeInsets.only(
                                          top: 40,
                                          left: 20,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 70,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                        image[index],
                                                        height: 30,
                                                        width: 50),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(name[index],
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "8 items",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 40),
                        ),
                      )
                    ]),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 10,
                          ),
                          child: Column(
                            children: List.generate(
                              4,
                              (index) => Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 150,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Row(
                                        children: [
                                          Center(
                                            child: Image.asset(
                                              horizontalimage[index],
                                              height: 150,
                                              width: 150,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Container(
                                                      height: 30,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10,
                                                          ),
                                                          color: Color(
                                                              0xfffafd4ae)),
                                                      child: Center(
                                                        child: Text(
                                                          cname[index],
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 115,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(hname[index],
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    price[index],
                                                    style: TextStyle(
                                                        fontSize: 38,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    weight[index],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.notifications, size: 40, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu_book_rounded, size: 40, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.list, size: 40, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
