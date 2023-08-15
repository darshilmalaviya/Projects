import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartHeven extends StatefulWidget {
  const CartHeven({Key? key}) : super(key: key);

  @override
  State<CartHeven> createState() => _CartHevenState();
}

class _CartHevenState extends State<CartHeven> {
  List name = [
    "Potato wedges",
    "Corn on the cob",
    "Cheese sandwich",
    "Burger",
  ];
  List color = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  List pageview = [
    "asset/images/images.jpeg",
    "asset/images/Mc_Donalds.jpg",
    "asset/images/Grillhellhouse.jpeg",
  ];
  int select = 0;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          select = value;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(pageview[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
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
                                    : Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 15,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black38,
                        ),
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 15,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            like = !true;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black38,
                          ),
                          child: favorite(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffff2f3f5),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Big Mad Burger",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xffff2f3f5),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Potato Bun, cheddar cheese,beef,cucumber,red\nonion,iceberg letturce,avocado,tomato",
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xffff2f3f5),
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    left: 20,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chhose addition",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Required",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Color(0xfffe5e5e5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.grey,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SizedBox(
                  height: 200,
                  width: 392,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 82,
                        width: 392,
                        color: Colors.white,
                        child: ListTileTheme(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: ListTile(
                                  leading: Check(),
                                  title: Text(
                                    name[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  subtitle: index == 0
                                      ? Text(
                                          "Recomanded",
                                          style:
                                              TextStyle(color: Colors.orange),
                                        )
                                      : Text(" "),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 392,
                color: Color(0xfff2f3f5),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Add (1) to cart-12,90",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        check = !check;
      },
      child: check == true
          ? Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1),
              ),
            )
          : Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Icon(
                Icons.check,
                color: Colors.black,
                size: 18,
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
              color: Colors.orange,
            ),
    );
  }
}
