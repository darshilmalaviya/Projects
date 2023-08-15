import 'package:flutter/material.dart';

import 'Description_Veggie_Food.dart';

class Filterfood extends StatefulWidget {
  const Filterfood({Key? key}) : super(key: key);

  @override
  State<Filterfood> createState() => _FilterfoodState();
}

class _FilterfoodState extends State<Filterfood> {
  int select = 0;
  List image = [
    "assets/image/hot-soup.png",
    "assets/image/vegetable.png",
    "assets/image/chicken.png",
    "assets/image/poinsettia.png",
    "assets/image/soda.png",
  ];
  List name = [
    "Soup",
    "Vege",
    "Chicken",
    "Drink",
    "Other",
  ];
  List color = [
    Color(0xffffef2dc),
    Color(0xffffee1e5),
  ];
  List image1 = [
    "assets/image/vegetable.png",
    "assets/image/hot-soup.png",
  ];
  List name1 = [
    "Veggie Stuffed Shells",
    "Soup Stuffed Shells",
  ];
  List namecolor = [
    Colors.orange,
    Colors.pink,
  ];
  List price = [
    "\$12",
    "\$32",
  ];
  List image2 = [
    "assets/image/salad.png",
    "assets/image/salad (1).png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      const Text(
                        "Hi Darshil!",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/image/1000053958.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 350,
                        padding: const EdgeInsets.only(left: 10, top: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                            hintText: "Search foods...",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            suffixIcon: Icon(
                              Icons.mic,
                              size: 25,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 120,
                    width: 392,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
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
                                width: 80,
                                height: 70,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 0.5),
                                  color: select == index
                                      ? Colors.black12
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    image[index],
                                    color: select == index
                                        ? Colors.orange
                                        : Colors.black,
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              name[index],
                              style: TextStyle(
                                  color: select == index
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 20,
                                  fontWeight: select == index
                                      ? FontWeight.w800
                                      : FontWeight.w500),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 450,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Description(),
                                ),
                              );
                            },
                            child: Container(
                              height: 400,
                              width: 230,
                              margin: const EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.red,
                                      offset: Offset(2, 2),
                                      blurRadius: 2,
                                      spreadRadius: 2)
                                ],
                                color: color[index],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, bottom: 20),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        image2[index],
                                        height: 150,
                                        width: 150,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      name1[index],
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: namecolor[index],
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          favorite(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
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
          ? Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ], borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Icon(
                Icons.favorite,
                size: 20,
                color: Colors.red,
              ),
            )
          : Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ], borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Icon(
                Icons.favorite_outline,
                size: 20,
                color: Colors.red,
              ),
            ),
    );
  }
}
