import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffff3d3ac),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.teal,
                    size: 30,
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
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Image.asset("asset/images/Multivitamin.png",
                    height: 200, width: 200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: Container(
                height: 460,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Multi Vitamins",
                                              style: TextStyle(
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "90 Pills",
                                          style: TextStyle(
                                              fontSize: 22, color: Colors.grey),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.orange),
                                              Icon(Icons.star,
                                                  color: Colors.orange),
                                              Icon(Icons.star,
                                                  color: Colors.orange),
                                              Icon(Icons.star,
                                                  color: Colors.orange),
                                              Icon(Icons.star_outline,
                                                  color: Colors.orange),
                                              Text(
                                                "4.0",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              value++;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              border: Border.all(
                                                  color: Colors.orange,
                                                  width: 2),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.orange,
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
                                              fontSize: 15,
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
                                                  color: Colors.orange,
                                                  width: 2),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Product Details",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Multivitamins are used to provide vitamins",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "that are not taken in through the diet",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Multivitamins are also used to treat vitamin",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "deficiencies caused by illness,pregnancy and",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "many other conditions.",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$217",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "\$287",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 25,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color(0xffff28365),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      height: 60,
                                      width: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xfff2a8c8b),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Add to Basket",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
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
          ],
        ),
      ),
    );
  }
}
