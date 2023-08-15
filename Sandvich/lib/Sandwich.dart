import 'package:flutter/material.dart';

class Sandwich extends StatelessWidget {
  Sandwich({Key? key}) : super(key: key);

  List name = ["Vegetable Sandwich", "Salmon Bowl", "Fruit Bowl", "Egg Bowl"];
  List price = ["24.00", "25.00", "26.00", "27.00"];
  List image = [
    "assets/images/Vegetable1.png",
    "assets/images/Salmon1.png",
    "assets/images/friut1.png",
    "assets/images/Egg1.png",
  ];
  List rowname = [
    "Beef Bowl",
    "Beef And Egg Bowl",
    "Fruit Bowl",
  ];
  List rowprice = [
    "25.00",
    "27.00",
    "20.00",
  ];

  List rowimage = [
    "assets/images/Salmon1.png",
    "assets/images/Egg1.png",
    "assets/images/friut1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      size: 40,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 290,
                    ),
                    Icon(
                      Icons.add_road,
                      size: 35,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(1, 2),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          suffixIcon: Icon(Icons.search,
                              size: 30, color: Colors.orange),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Your Favourites",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                )
              ]),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 80, left: 15),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xfff8ae0dc)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text(
                                    name[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(price[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Center(
                                            child: Text(
                                          "Add",
                                          style:
                                              TextStyle(color: Colors.orange),
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 14,
                              child: Center(
                                  child: Image.asset(
                                image[index],
                                height: 150,
                                width: 150,
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("DINNER",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("LUNCH",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange)),
                              SizedBox(
                                width: 30,
                              ),
                              Text("BREAKFAST",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(
                        3,
                        (index) => Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 94, top: 20),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 270,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomLeft: Radius.circular(40),
                                          ),
                                          color: Color(0xfff8ae0dc),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              rowname[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              rowprice[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.white),
                                                  child: Center(
                                                      child: Text(
                                                    "Add",
                                                    style: TextStyle(
                                                        color: Colors.orange),
                                                  )),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: -10,
                                        left: -30,
                                        child: Center(
                                            child: Image.asset(
                                          rowimage[index],
                                          height: 100,
                                          width: 100,
                                        )),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
