import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int select = 0;
  List name = [
    "All",
    "Burgers",
    "Pizza",
    "Sushi",
    "Thai",
    "Other",
  ];
  List imagebuilder1 = [
    "assets/image/pizza-gac7db2a00_1920.jpg",
    "assets/image/mae-mu-I7A_pHLcQK8-unsplash.jpg",
    "assets/image/Italiyanj_Restaurant.jpg",
    "assets/image/Egg_.jpg",
  ];
  List name1 = [
    "New York Pizza",
    "Italiyanoman",
    "John's Burger",
    "SushiMaster",
  ];
  List rating = [
    "4.5",
    "4.9",
    "4.8",
    "4.2",
  ];
  List time = [
    "20 min",
    "25 min",
    "35 min",
    "23 min",
  ];
  List greyname = [
    "Pizza",
    "Italian",
    "Burger",
    "Sushi",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffff3f3f3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "East 42nd St, New York",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.black),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orange,
                          ),
                          child: Icon(Icons.location_on,
                              color: Colors.white, size: 30),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(thickness: 1.5, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "321",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Restaurants",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.orange, width: 2)),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Filters",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 25,
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              width: 392,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        select = index;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 65,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: select == index ? Colors.black : Colors.white,
                        border: Border.all(
                            color: select == index ? Colors.black : Colors.grey,
                            width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        name[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: select == index ? Colors.white : Colors.black,
                        ),
                      )),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Divider(
                thickness: 1.5,
                height: 1,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 100,
                          width: 380,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              imagebuilder1[index],
                                            ),
                                            fit: BoxFit.cover),
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                        ),
                                      ),
                                      child: favorite(),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      name1[index],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            size: 20,
                                            Icons.star_border,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            rating[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            size: 18,
                                            Icons.watch_later_outlined,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            time[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 70),
                                child: Text(greyname[index],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                        ),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 350,
                          dashColor: Colors.grey,
                          lineThickness: 2,
                          dashLength: 3.0,
                          dashGapLength: 3.0,
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return index == 1
                        ? Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 65,
                                    width: 350,
                                    margin: EdgeInsets.symmetric(vertical: 30),
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrangeAccent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Get 10%",
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          Text(
                                            " Off Code",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -20,
                                    left: 230,
                                    child: Center(
                                      child: Image.asset(
                                          "assets/image/Popcorn.png",
                                          height: 130,
                                          width: 130),
                                    ),
                                  ),
                                ],
                              ),
                              DottedLine(
                                direction: Axis.horizontal,
                                lineLength: 350,
                                dashColor: Colors.grey,
                                lineThickness: 2,
                                dashLength: 3.0,
                                dashGapLength: 3.0,
                              )
                            ],
                          )
                        : SizedBox();
                  },
                  itemCount: 4),
            ),
          ],
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
              color: Colors.orange,
            )
          : Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.orange,
            ),
    );
  }
}
