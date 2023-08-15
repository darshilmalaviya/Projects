import 'package:flutter/material.dart';

class SecondTO extends StatefulWidget {
  SecondTO({Key? key}) : super(key: key);

  @override
  State<SecondTO> createState() => _SecondTOState();
}

class _SecondTOState extends State<SecondTO> {
  List image = [
    "asset/images/burger (1).png",
    "asset/images/t-shirt.png",
    "asset/images/medicine.png",
    "asset/images/fast-food.png",
    "asset/images/cosmetics.png",
  ];
  List free = [
    "asset/images/delivery-truck.png",
    "asset/images/location.png",
    "asset/images/discount.png",
  ];
  List free_name = [
    "Delivered \nby Primzee",
    "Free \ndelivery",
    "Special \noffers"
  ];
  List Rate = [
    "4,9",
    "3,9",
  ];
  List rd = [
    "asset/images/bur.jpg",
    "asset/images/85.jpg",
    "asset/images/WhatsApp Image 2023-02-21 at 15.09.10.jpg",
  ];

  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 392,
                decoration: BoxDecoration(
                  color: Color(0xfffffde00),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 392,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.menu,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "PRIMEZEE",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w800),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 20,
                                  child:
                                      Icon(Icons.search, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                5,
                                (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      select = index;
                                    });
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 40,
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            image[index],
                                            height: 35,
                                            width: 35,
                                          ),
                                        ),
                                        select == index
                                            ? Icon(Icons.arrow_drop_down)
                                            : Container(
                                                color: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: Row(
                        children: [
                          Text(
                            "Delivering to",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 1),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Home . 4405 Beeghy Street",
                              hintStyle: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                              prefixIcon: Icon(Icons.add_business,
                                  color: Colors.yellow),
                              suffixIcon:
                                  Icon(Icons.my_location, color: Colors.black),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 392,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 80,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Center(
                                        child: Image.asset(
                                          free[index],
                                          height: 40,
                                          width: 40,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        free_name[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 15,
                      child: Icon(Icons.refresh, color: Colors.yellowAccent),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Recent orders",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                width: 392,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 170,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                image:
                                    AssetImage("asset/images/Mc_Donalds.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      width: 65,
                                      margin:
                                          EdgeInsets.only(right: 20, top: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            Rate[index],
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          favorite(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 65,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Center(
                                          child: Image.asset(
                                            "asset/images/chills.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, left: 20, right: 80),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "1 x Mushroom Soup...",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              "85.0",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 15,
                                        child: Icon(Icons.refresh,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Recomended",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        rd[index],
                                      ),
                                      fit: BoxFit.cover)),
                            );
                          },
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
              size: 20,
              color: Colors.black,
            )
          : Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.teal,
            ),
    );
  }
}
