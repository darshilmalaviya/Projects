import 'package:flutter/material.dart';

import 'Bottom_Nav_Bar_Fruit.dart';
import 'Cart_Fruit.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int select = 0;
  List image2 = [
    "assets/image/salad.png",
    "assets/image/salad (1).png",
    "assets/image/salad.png",
    "assets/image/salad (1).png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffef2dc),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 720,
              width: 392,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30),
                  right: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 400,
                    width: 392,
                    decoration: const BoxDecoration(
                      color: Color(0xffffef2dc),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Fruit(),
                                      ),
                                    );
                                  });
                                },
                                child: const Icon(
                                  Icons.keyboard_arrow_left,
                                  color: Colors.orange,
                                  size: 50,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 280, right: 20),
                                child: favorite(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 300,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                PageView.builder(
                                  onPageChanged: (value) {
                                    setState(() {
                                      select = value;
                                    });
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          height: 400,
                                          width: 392,
                                          child: Center(
                                            child: Image.asset(
                                              image2[index],
                                              height: 200,
                                              width: 200,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      4,
                                      (index) => Container(
                                        height: 8,
                                        width: 8,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Veggie Stuffed Shells",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            "Create a lighter, healthier version of stuffed",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "shells, the standard whole milk ricotta",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "cheese filling is replaced whith frozen leaf",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "spainach and lowfat, cottage cheese or part-",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "skim ricotta, which cuts down the fat",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "without sacrificing creaminess.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  const Text(
                    "\$12",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Cart(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
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
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ], borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: const Icon(
                Icons.favorite,
                size: 20,
                color: Colors.red,
              ),
            )
          : Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ], borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: const Icon(
                Icons.favorite_outline,
                size: 20,
                color: Colors.black,
              ),
            ),
    );
  }
}
