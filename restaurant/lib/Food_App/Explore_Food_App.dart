import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List name = [
    "Acai bowl",
    "Feature salad",
    "Acai bowl",
    "Feature salad",
  ];
  List city = [
    "Mary",
    "Anastasia",
    "Anastasia",
    "Mary",
  ];
  List image = [
    "assets/image/Egg_.jpg",
    "assets/image/Food_Pizza.jpeg",
    "assets/image/Food_Sushi.jpeg",
    "assets/image/Food_Italiyan.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Explore",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 40,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for food",
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Recomanded",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      Text(
                        "More",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 2,
                              crossAxisSpacing: 20,
                              childAspectRatio: 0.8),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 130,
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 2),
                                child: Text(name[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2, left: 2),
                                child: Text(city[index],
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
                Row(
                  children: const [
                    Text(
                      "Most View",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 200,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: const DecorationImage(
                          image: AssetImage("assets/image/Waffel.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
