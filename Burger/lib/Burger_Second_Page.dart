import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Secondburger extends StatelessWidget {
  Secondburger({Key? key}) : super(key: key);
  List item = ["Double Cheese", "Beef Burger", "Chicken Burger"];
  List images = [
    "assets/images/burger_cheese.png",
    "assets/images/burger5.png",
    "assets/images/chicken2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1eb2a6),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 250,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("assets/images/woman-removebg-preview.png"),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Text(
                      "CHICKEN BURGER\n\n",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w700),
                    ),
                    Positioned(
                      top: 35,
                      child: Text(
                        "Burger KING   Delivery. 15000  25",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Positioned(
                        top: 34,
                        left: 110,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.transparent,
                          child: Center(
                              child: Icon(
                            size: 20,
                            Icons.r_mobiledata,
                            color: Colors.white,
                          )),
                        )),
                    Positioned(
                      top: -50,
                      left: -120,
                      child: Center(
                        child: Image.asset("assets/images/burger4.png",
                            height: 400, width: 400),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 190,
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "Rp\n",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "65.000",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 170,
                        left: 180,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              size: 25,
                              color: Colors.white,
                            ),
                          ],
                        )),
                    Positioned(
                      top: 230,
                      left: -30,
                      child: Container(
                        height: 480,
                        width: 392,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Description",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                  child: Text(
                                    "Lorem ipsum dolor sitamet,consectetur\n"
                                    "adipiscing elit.Fermentum arcu vitae,libero,proin\n"
                                    "id et eoros turpis pellentesque, Diam nam felis,\n"
                                    "feugiat eget nibh tellus ullamcorper mattis\n"
                                    "bibendum.Malesuada adipiscing dis tincidunt\n"
                                    "pretium cras.Est tellus mi fermentum malesuada.",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 330,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  item.length,
                  (index) => Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 120,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1eb2a6),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: -35,
                                child: Center(
                                  child: Image.asset(images[index],
                                      height: 150, width: 150),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(item[index],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 60,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xfffd4fbec),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.remove, color: Colors.white),
                      ),
                      Text("2", style: TextStyle(fontSize: 25)),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: Text("Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
