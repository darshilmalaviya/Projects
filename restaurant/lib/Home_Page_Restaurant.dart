import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int select = 0;
  int select1 = 0;
  List imagebuilder = [
    "assets/image/pizza-gac7db2a00_1920.jpg",
    "assets/image/mae-mu-I7A_pHLcQK8-unsplash.jpg",
    "assets/image/Italiyanj_Restaurant.jpg",
    "assets/image/Egg_.jpg",
  ];
  List name = [
    "NYC Pizza",
    "John's Burgers",
    "Italiyan",
    "Dr Food",
  ];
  List<Map<String, dynamic>> data = [
    {"image": "assets/image/Burger1.png", "name": "Burger", "time": "15min"},
    {"image": "assets/image/sushi.png", "name": "Sushi", "time": "30min"},
    {"image": "assets/image/Pizza.png", "name": "Pizza", "time": "20min"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 50,
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text("Welcome",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Matt",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(f
                      width: 10,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
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
                                    Border.all(color: Colors.white, width: 4)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 55,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffff3f3f3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "East 42nd St, New York",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -2,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange,
                            ),
                            child: Icon(Icons.location_on,
                                color: Colors.white, size: 30),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 180,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            select = value;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 150,
                                width: 320,
                                margin: EdgeInsets.only(
                                    top: 20, left: 30, right: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Hot Deals",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Free",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 35),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Delivery",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 35),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: -20,
                                  right: 40,
                                  child: Image.asset("assets/image/.png")),
                            ],
                          );
                        },
                      ),
                      Positioned(
                        bottom: -20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => Container(
                              height: 8,
                              width: 8,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: select == index
                                      ? Colors.orange
                                      : Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Favorites",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.orange, width: 2)),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 150,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            select1 = value;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 150,
                              width: 392,
                              child: index == 0
                                  ? Row(
                                      children: List.generate(
                                          3,
                                          (index) => Container(
                                                margin:
                                                    EdgeInsets.only(left: 15),
                                                height: 130,
                                                width: 110,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.black12),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10),
                                                      child: Center(
                                                          child: Image.asset(
                                                        data[index]["image"],
                                                        height: 70,
                                                        width: 70,
                                                      )),
                                                    ),
                                                    Text(
                                                      data[index]["name"],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 18),
                                                    ),
                                                    Text(
                                                      data[index]["time"],
                                                      style: TextStyle(
                                                          color: Colors.orange,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                    )
                                  : index == 1
                                      ? Row(
                                          children: List.generate(
                                              3,
                                              (index) => Container(
                                                    margin: EdgeInsets.only(
                                                        left: 15),
                                                    height: 130,
                                                    width: 110,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.black12),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10),
                                                          child: Center(
                                                              child:
                                                                  Image.asset(
                                                            data[index]
                                                                ["image"],
                                                            height: 70,
                                                            width: 70,
                                                          )),
                                                        ),
                                                        Text(
                                                          data[index]["name"],
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontSize: 18),
                                                        ),
                                                        Text(
                                                          data[index]["time"],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.orange,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                        )
                                      : Row(
                                          children: List.generate(
                                              3,
                                              (index) => Container(
                                                    margin: EdgeInsets.only(
                                                        left: 15),
                                                    height: 130,
                                                    width: 110,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.black12),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10),
                                                          child: Center(
                                                              child:
                                                                  Image.asset(
                                                            data[index]
                                                                ["image"],
                                                            height: 70,
                                                            width: 70,
                                                          )),
                                                        ),
                                                        Text(
                                                          data[index]["name"],
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontSize: 18),
                                                        ),
                                                        Text(
                                                          data[index]["time"],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.orange,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontSize: 16),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                        ));
                        },
                      ),
                      Positioned(
                        bottom: -20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => Container(
                              height: 8,
                              width: 8,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: select1 == index
                                      ? Colors.orange
                                      : Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                child: Row(
                  children: [
                    Text(
                      "Near you",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.orange, width: 2)),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 145,
                width: 392,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 150,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(imagebuilder[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
