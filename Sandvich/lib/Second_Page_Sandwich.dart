import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  Secondpage({Key? key}) : super(key: key);

  List name = [
    "WEIGHT",
    "CALORIES",
    "VITAMINS",
  ];

  List price = [
    "250",
    "250",
    "B66",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff8ae0dc),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.orange,
                  size: 35,
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(
                  Icons.add_road,
                  color: Colors.orange,
                  size: 35,
                ),
              ],
            ),
            SizedBox(
              height: 117.5,
            ),
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 650,
                      width: 392,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 170, left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "Vegetable",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Sandwich",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                "\$24.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 30),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xfff8ae0dc),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 130,
                          ),
                          SizedBox(
                            height: 75,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 130,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(children: [
                                      SizedBox(width: 20),
                                      Text(
                                        name[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(children: [
                                      SizedBox(width: 45),
                                      Text(
                                        price[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ]),
                                  ]),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            height: 60,
                            width: 370,
                            decoration: BoxDecoration(
                              color: Color(0xfff8ae0dc),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  "\$ 72.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "\>>>>>>",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -100,
                      left: 50,
                      child: Center(
                        child: Image.asset("assets/images/Vegetable1.png",
                            height: 250, width: 250),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
