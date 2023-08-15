import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondtoast extends StatelessWidget {
  const Secondtoast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffe6f0fa),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.arrow_back_ios_outlined, size: 30),
                SizedBox(
                  width: 200,
                ),
                Icon(Icons.shopping_bag_outlined, size: 30),
              ],
            ),
            SizedBox(
              height: 162.5,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 600,
                  width: 392,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180, left: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Toast With Ham",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$3,28",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w800,
                                color: Colors.deepOrange),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                color: Colors.grey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.white),
                                ),
                                Icon(
                                  (Icons.add),
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "weight  ",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "120 g  ",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Calories",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "430ccal",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                              "Toast bread ' ham\n"
                              "mayonnaise ' cheese\n"
                              "ketchup ' tomatoes\n"
                              "fresh herbs ' egg\n"
                              "vegetable oil",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(children: [
                        Container(
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                            "Add to cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w900),
                          )),
                        ),
                      ]),
                    ],
                  ),
                ),
                Positioned(
                  top: -150,
                  left: 20,
                  child: Center(
                      child: Image.asset(
                    "assets/images/Toastwithhum.png",
                    height: 350,
                    width: 350,
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
