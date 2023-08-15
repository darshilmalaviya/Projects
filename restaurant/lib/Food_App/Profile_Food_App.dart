import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profliefood extends StatefulWidget {
  const Profliefood({Key? key}) : super(key: key);

  @override
  State<Profliefood> createState() => _ProfliefoodState();
}

class _ProfliefoodState extends State<Profliefood> {
  int container = 0;
  List image = [
    "assets/image/Food_Pizza.jpeg",
    "assets/image/Food_Pizza.jpeg",
    "assets/image/Food_Sushi.jpeg",
    "assets/image/Food_Italiyan.jpeg",
  ];
  List name = [
    "Salad cook",
    "Kitchen flower",
    "Piiza mania",
    "Salad cook",
  ];
  List course = [
    "18 course",
    "24 course",
    "28 course",
    "8 course",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: 392,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40, left: 30),
                    child: Text("My home page",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w800)),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  child: Container(
                    height: 230,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                foregroundImage:
                                    AssetImage("assets/image/1000053958.jpg"),
                                maxRadius: 45,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Darshil",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "ID : 65412054798",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65),
                          child: Row(
                            children: [
                              Text(
                                "56",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Text(
                                "786",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              Text(
                                "Follower",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              Text(
                                "Tags",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 150),
              child: Text("Cookbooks",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: SizedBox(
                height: 378,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          index == 0
                              ? Container(
                                  height: 220,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 115,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image/Waffel.jpeg"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 81.5,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/image/pizza-gac7db2a00_1920.jpg"),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.8,
                                          ),
                                          Container(
                                            height: 100,
                                            width: 81.5,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/image/Egg_.jpg"),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  height: 220,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          image[index],
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 2),
                            child: Text(name[index],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2, left: 2),
                            child: Text(course[index],
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
