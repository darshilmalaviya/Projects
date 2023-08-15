import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int value = 0;
  List name = [
    "Vegetable",
    "Soup",
    "Drinks",
  ];
  List price = [
    "\$12",
    "\$10",
    "\$12",
  ];
  List image2 = [
    "assets/image/salad.png",
    "assets/image/drink.png",
    "assets/image/salad.png",
  ];
  List color = [
    Colors.orange,
    Colors.pinkAccent,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffef2dc),
        body: Column(
          children: [
            Container(
              height: 750,
              width: 392,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: Row(
                        children: const [
                          Icon(
                            color: Colors.grey,
                            Icons.arrow_back_ios_outlined,
                            size: 30,
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: const [
                          Text(
                            "Shoping cart",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                          Spacer(),
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "\$34",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        3,
                        (index) => Container(
                          height: 130,
                          width: 350,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 120,
                                width: 110,
                                decoration: BoxDecoration(
                                  color: color[index],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Image.asset(image2[index],
                                      height: 70, width: 70),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name[index],
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      price[index],
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          value++;
                                        });
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0, 1),
                                                spreadRadius: 1,
                                                blurRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(Icons.add,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          "$value",
                                          style: const TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (value > 0) {
                                            value--;
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0, 1),
                                                spreadRadius: 1,
                                                blurRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(Icons.remove,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.delete,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        padding: const EdgeInsets.all(6),
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: SizedBox(
                            height: 60,
                            width: 350,
                            child: Center(
                              child: Text(
                                "APPLY COUPON",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 250),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tax",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Text(
                                "\$34",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$00",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 55,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
