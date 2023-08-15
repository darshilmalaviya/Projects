import 'package:flutter/material.dart';

class Burgermain extends StatelessWidget {
  Burgermain({Key? key}) : super(key: key);

  List item = ["Noodels", "Burger", "Desert", "Drink"];
  List picture = [
    "assets/images/Noodels.png",
    "assets/images/burger.png",
    "assets/images/ice-cream.png",
    "assets/images/drink.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    width: 392,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      color: Color(0xfff1eb2a6),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              color: Colors.white,
                              Icons.menu_outlined,
                              size: 35,
                            ),
                            SizedBox(
                              width: 260,
                            ),
                            Icon(
                              color: Colors.white,
                              Icons.shopping_cart,
                              size: 35,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 25,
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Image.asset(
                            "assets/images/beauty.png",
                            height: 70,
                            width: 70,
                          )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Dinihari",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey,
                                  ),
                                  child: Center(child: Text("Vip")),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "Rp\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "576.500",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "139",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "5",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "24",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 235,
                    left: 77,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Buy",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 63,
                        ),
                        Text(
                          "Voucher",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Text(
                          "Alms",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 35,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(4, 4),
                                spreadRadius: (2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  icon: Icon(Icons.search, size: 30),
                                  labelText: "What do you want to eat?"),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 70,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(1, 2),
                                            blurRadius: 2,
                                            spreadRadius: 1,
                                          ),
                                        ]),
                                    child: Center(
                                      child: Image.asset(picture[index],
                                          height: 40, width: 40),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(item[index]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 250,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1eb2a6),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(20)),
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 20,
                                  child: Text(
                                    "Chicken\nBurger",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800),
                                  )),
                              Positioned(
                                top: 35,
                                left: -40,
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/burger5.png",
                                    height: 180,
                                    width: 180,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 200,
                                left: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp\n\n",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "65.000",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.add, size: 40),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 250,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1eb2a6),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(20)),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 20,
                                child: Text(
                                  "Double\nCheese",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                left: -50,
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/burger_cheese.png",
                                    height: 180,
                                    width: 180,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 200,
                                left: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp\n\n",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "85.000",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.add, size: 40),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 75,
                width: 392,
                decoration: BoxDecoration(
                  color: Color(0xfff1eb2a6),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.bookmark, color: Colors.white, size: 45),
                    Icon(Icons.article, color: Colors.white, size: 45),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.home, color: Colors.white, size: 45),
                    ),
                    Icon(Icons.notifications, color: Colors.white, size: 45),
                    Icon(Icons.person, color: Colors.white, size: 45),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
