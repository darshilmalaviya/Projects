import 'package:flutter/material.dart';

class Popularrecipies extends StatefulWidget {
  const Popularrecipies({Key? key}) : super(key: key);

  @override
  State<Popularrecipies> createState() => _PopularrecipiesState();
}

class _PopularrecipiesState extends State<Popularrecipies> {
  List image = [
    "assets/image/Egg_.jpg",
    "assets/image/Burger_Restaurant.jpg",
    "assets/image/pizza-gac7db2a00_1920.jpg",
    "assets/image/Egg_.jpg",
    "assets/image/Waffel.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: const [
                    Text(
                      "Popular recipes",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 704,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 140,
                        width: 380,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Acai bowl",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Green pepers Apple",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "Green pepers A-pple",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$ 12.25",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 55,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Colors.teal, width: 1.5),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "Buy",
                                          style: TextStyle(color: Colors.teal),
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
