import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  Secondpage({Key? key}) : super(key: key);
  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  List image = [
    "asset/images/Multivitamin.png",
    "asset/images/Thayro.png",
    "asset/images/Vitamin.png",
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
  int value = 0;
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.teal,
                        size: 30,
                      ),
                      Spacer(),
                      Text(
                        "Medicines",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.teal,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange.shade100),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search,
                                      color: Color(0xfff6e9981), size: 30),
                                  border: InputBorder.none,
                                  hintText: "search for drugs, doctors etc..."),
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
                ),
                Column(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Color(0xffffcd9bb),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Center(
                                child: Image.asset(
                                  image[index],
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      sname[index],
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          pills[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          price[index],
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          Actualprice[index],
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              select == index
                                  ? Container(
                                      height: 150,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(50),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 25),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(
                                                  () {
                                                    value++;
                                                  },
                                                );
                                              },
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "${value}",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  if (value > 0) {
                                                    value--;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 40,
                                              ),
                                              favorite(),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  select = index;
                                                });
                                              },
                                              child: CircleAvatar(
                                                backgroundColor: Colors.orange,
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
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
            ),
    );
  }
}
