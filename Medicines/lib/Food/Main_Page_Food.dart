import 'package:flutter/material.dart';

class Mainpagefood extends StatefulWidget {
  Mainpagefood({Key? key}) : super(key: key);

  @override
  State<Mainpagefood> createState() => _MainpagefoodState();
}

class _MainpagefoodState extends State<Mainpagefood> {
  List image = [
    "asset/images/Mc_Donalds.jpg",
    "asset/images/Md.jpg",
  ];
  List Circleimage = [
    "asset/images/MC LOGO.png",
    "asset/images/Sub.png",
  ];

  List name = [
    "Mc Donald's Beeghly",
    "Sub way",
  ];
  List desc = [
    "Its Often to ",
    "Something ...",
  ];
  List rating = [
    "7,9",
    "8,9",
  ];

  List image1 = [
    "asset/images/Star1.png",
    "asset/images/Sub.png",
  ];
  List time = [
    "30-35 mins",
    "30-35 mins",
  ];
  List time1 = [
    "min. 25,00",
    "min. 25,00",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffff3f3fb),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 90,
                width: 392,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            fontSize: 23, fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20,
                        child: Icon(Icons.search, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: Row(
                  children: [
                    Text(
                      "Delivering to",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 2),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Home . 4405 Beeghy Street",
                        hintStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        prefixIcon:
                            Icon(Icons.add_business, color: Colors.yellow),
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Text(
                      "Featured Restaurants",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 190,
                    width: 392,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Container(
                            height: 150,
                            width: 320,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 20),
                                  child: Container(
                                    height: 33,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          rating[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        favorite(),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 70,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.red,
                                          child: Image.asset(
                                            Circleimage[index],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15, left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                name[index],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                desc[index],
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
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
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15),
                    child: Text(
                      "Recomanded",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 392,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Container(
                              height: 150,
                              width: 170,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      image1[index],
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              time[index],
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              time1[index],
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: Colors.black),
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    rating[index],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
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
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.teal,
            ),
    );
  }
}
