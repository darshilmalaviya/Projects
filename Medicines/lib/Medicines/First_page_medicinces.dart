import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List name = [
    "Consultation",
    "Medicines",
    "Lab Tests",
    "Health",
    "Other",
  ];

  List images = [
    "asset/images/Consultation.png",
    "asset/images/Mediceine1.png",
    "asset/images/Lab-test.png",
    "asset/images/Health1.png",
    "asset/images/Other.png",
  ];

  List sname = [
    "Multi Vitamins",
    "Thayrosafe",
    "Vitamins",
    "Other",
  ];

  List pills = [
    "90 pills",
    "180 pills",
    "200 pills",
    "110 pills",
  ];

  List price = [
    "\$342",
    "\$207",
    "\$117",
    "\$217",
  ];

  List Actualprice = [
    "\$217",
    "\$117",
    "\$207",
    "\$342",
  ];

  List image1 = [
    "asset/images/Multivitamin.png",
    "asset/images/Vitamin.png",
    "asset/images/Thayro.png",
    "asset/images/Other.png",
  ];

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.menu, size: 34),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          "Online\nPharmacy",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: Color(0xfffee385a),
                          ),
                        ),
                      )
                    ]),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 60,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange.shade100),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search,
                                        color: Color(0xfff6e9981), size: 30),
                                    border: InputBorder.none,
                                    hintText:
                                        "search for drugs, doctors etc..."),
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Container(
                            height: 55,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xfff298c8a),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Text("Shop by Category",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w800)),
                          SizedBox(width: 150),
                          Icon(
                            Icons.more_horiz,
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 120,
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
                                  width: 85,
                                  height: 85,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: select == index
                                        ? Colors.orange
                                        : Color(0xffffcd9bb),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      images[index],
                                      height: 50,
                                      width: 50,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text("Popular Products",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w800)),
                          SizedBox(width: 160),
                          Icon(
                            Icons.more_horiz,
                            size: 45,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 250,
                              child: SizedBox(
                                height: 120,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      height: 150,
                                      child: Container(
                                        width: 200,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: Color(0xffffcd9bb),
                                          borderRadius:
                                              BorderRadius.circular(45),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 110,
                                                  ),
                                                  favorite(),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Center(
                                                child: Image.asset(
                                                  image1[index],
                                                  height: 80,
                                                  width: 80,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    sname[index],
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    pills[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    price[index],
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    Actualprice[index],
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -10,
                  left: 175,
                  child: Center(
                    child: Image.asset("asset/images/Mediceine.png",
                        height: 200, width: 200),
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
    return InkResponse(
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
                color: Colors.teal,
              ));
  }
}
