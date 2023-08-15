import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List Imagegenret = [
    "asset/images/Peach.png",
    "asset/images/Basil.png",
    "asset/images/Pumkin.png",
    "asset/images/Tomato.png",
  ];
  List name = [
    "Peach",
    "Basil",
    "Pumkin",
    "Tomato",
  ];
  List city = [
    "Spain",
    "Italy",
    "Ukrain",
    "Holland",
  ];
  List price = [
    "\$3.15",
    "\$1.50",
    "\$3.50",
    "\$5.75",
  ];
  List weight = [
    "(Kg)",
    "(Pc)",
    "(Kg)",
    "(Kg)",
  ];

  int value = 0;
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 25,
                top: 20,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "My cart",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("asset/images/women1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 150,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xfffffc9b1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              Imagegenret[index],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    name[index],
                                    style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 2,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    city[index],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 5,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        value++;
                                      });
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 1),
                                              spreadRadius: 1,
                                              blurRadius: 1)
                                        ],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        color: Colors.white,
                                      ),
                                      child:
                                          Icon(Icons.add, color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0, 1),
                                            spreadRadius: 1,
                                            blurRadius: 1)
                                      ],
                                      color: Color(0xffff8f9eb),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${value}",
                                        style: TextStyle(
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
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0, 1),
                                              spreadRadius: 1,
                                              blurRadius: 1)
                                        ],
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5)),
                                        color: Colors.white,
                                      ),
                                      child: Icon(Icons.remove,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 10),
                                    child: Text(
                                      weight[index],
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 92.9,
                width: 392,
                decoration: BoxDecoration(
                  color: Color(0xfffbab63b),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 30),
                      child: Column(
                        children: [
                          Text(
                            "Total: ",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "  \$13.90",
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 80),
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Buy Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xfffbab63b),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
