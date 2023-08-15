import 'package:flutter/material.dart';

class MainEKETA extends StatefulWidget {
  const MainEKETA({Key? key}) : super(key: key);

  @override
  State<MainEKETA> createState() => _MainEKETAState();
}

class _MainEKETAState extends State<MainEKETA> {
  List image = [
    "asset/images/bakery.png",
    "asset/images/grape.png",
    "asset/images/vegetable.png",
    "asset/images/milk.png",
    "asset/images/bakery (1).png",
  ];

  List name = [
    "Bakery",
    "Friuts",
    "Vegetables",
    "Milk",
    "Bakery",
  ];

  List gridview = [
    "asset/images/Lemon.png",
    "asset/images/Banana.png",
    "asset/images/Grapes.png",
    "asset/images/Orange.png",
    "asset/images/Lemon.png",
    "asset/images/Banana.png",
  ];

  List gridviewname = [
    "Lemon",
    "Banana",
    "Grape",
    "Orange",
    "Lemon",
    "Banana",
  ];
  List Gridviewspwcification = [
    "Bergmo Italy",
    "Cattier Italiano",
    "Cattier Italiano",
    "Cattier Italiano",
    "Bergmo Italy",
    "Bergmo Italy",
  ];
  List Pricegridview = [
    "€1.10",
    "€2.05",
    "€3.15",
    "€2",
    "€2.15",
    "€5.15",
  ];
  List ActualPricegridview = [
    "€2",
    "€3",
    "€4",
    "€3.10",
    "€1",
    "€5",
  ];
  List off = [
    "25% off",
    "15% off",
    "15% off",
    "15% off",
    "15% off",
    "15% off",
  ];
  int select = 0;

  int container = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          SizedBox(
                            width: 95,
                          ),
                          Text(
                            "EDEKA",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: 28),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffff6f7f9),
                            ),
                            child: Icon(Icons.arrow_forward_outlined,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffff6f7f9),
                            ),
                            child:
                                Icon(Icons.favorite_border, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 265,
                            decoration: BoxDecoration(
                              color: Color(0xffff6f7f9),
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: Colors.black, width: 0.03),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Search product here",
                                  icon: Icon(Icons.search,
                                      color: Colors.black, size: 30),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffff6f7f9),
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: Colors.black, width: 0.03),
                            ),
                            child: Icon(Icons.add_road, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
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
                                GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                    select = index;
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: select == index
                                          ? Color(0xfff4aba68)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        image[index],
                                        height: 45,
                                        width: 45,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(name[index],
                                    style: TextStyle(
                                        color: select == index
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 545,
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
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
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          favorite(),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: Image.asset(
                                        gridview[index],
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, top: 5),
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
                                      padding: const EdgeInsets.only(
                                          left: 25, top: 10),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25, top: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                Pricegridview[index],
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                ActualPricegridview[index],
                                                style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey,
                                                  fontSize: 22,
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
                              Positioned(
                                child: index == 0 || index == 3 || index == 4
                                    ? Container(
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          color: Colors.orange,
                                        ),
                                        child: Center(
                                          child: Text(
                                            off[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 10,
                  child: Container(
                    height: 50,
                    width: 352,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 0.09)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Total:",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "3x €49.5",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Cart",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
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
    );
  }
}

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        like = !like;
      },
      child: like == true
          ? Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
    );
  }
}
