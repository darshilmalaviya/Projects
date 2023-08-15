import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  Chat({Key? key, this.data}) : super(key: key);

  final data;
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List image = [
    "assets/images/darshil.jpg",
    "assets/images/Kirti.jpg",
    "assets/images/Ajay.jpg",
    "assets/images/General.jpg",
    "assets/images/Avi.jpg",
    "assets/images/General.jpg",
    "assets/images/Avi.jpg",
    "assets/images/Yash.jpg",
    "assets/images/Yash.jpg",
    "assets/images/darshil.jpg",
    "assets/images/Kirti.jpg",
    "assets/images/Ajay.jpg",
    "assets/images/General.jpg",
    "assets/images/Avi.jpg",
    "assets/images/General.jpg",
    "assets/images/Avi.jpg",
    "assets/images/General.jpg",
    "assets/images/General.jpg",
  ];
  List name = [
    "Darshil Malaviya",
    "Kirti Malaviya",
    "Ajay Barvaliya",
    "Harshil Mulani",
    "Dhruv Soitra",
    "Avi Pansuriya",
    "Ketul Ranoliya",
    "Yash Patoliya",
    "Raj Patoiya",
    "Milan Jograna",
    "Jay Asodariya",
    "Ankush",
    "Charmi",
    "Janki",
    "Darshil Malaviya",
  ];
  List chat = [
    "Good Morning",
    "Good Evening",
    "Good Afternoon",
    "How Are You",
    "Hii",
    "Whare Are You ?",
    "Good Morning",
    "Good Evening",
    "Good Afternoon",
    "How Are You",
    "Hii",
    "Whare Are You ?",
    "How Are You",
    "Hii",
    "Whare Are You ?",
  ];
  List time = [
    "8.56AM",
    "9.50PM",
    "8.56AM",
    "10.12AM",
    "8.56AM",
    "8.56AM",
    "9.50PM",
    "9.50PM",
    "8.56AM",
    "10.12AM",
    "8.56AM",
    "8.56AM",
    "9.50PM",
    "8.56AM",
    "10.12AM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.message),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                height: 721,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ListTile(
                            horizontalTitleGap: 15,
                            contentPadding: const EdgeInsets.only(left: 10),
                            leading: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        height: 300,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(image[index]),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 280,
                                              decoration: const BoxDecoration(
                                                color: Colors.black12,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 15),
                                                child: Text(
                                                  name[index],
                                                  style: const TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 50,
                                              width: 280,
                                              decoration: const BoxDecoration(
                                                color: Colors.black,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: const [
                                                    Icon(
                                                      Icons.chat,
                                                      color: Colors.teal,
                                                    ),
                                                    Icon(
                                                      Icons.call,
                                                      color: Colors.teal,
                                                    ),
                                                    Icon(
                                                      Icons.video_call,
                                                      color: Colors.teal,
                                                    ),
                                                    Icon(
                                                      Icons.add,
                                                      color: Colors.teal,
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
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                backgroundImage: AssetImage(image[index]),
                                maxRadius: 25,
                              ),
                            ),
                            title: Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(Icons.check, size: 18),
                                Text(chat[index]),
                              ],
                            ),
                            trailing: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, bottom: 15),
                              child: Text(
                                time[index],
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        index == 14
                            ? Column(
                                children: [
                                  const Divider(),
                                  Container(
                                    height: 150,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Icon(Icons.lock,
                                            size: 15, color: Colors.grey),
                                        Text("Your personal massage are"),
                                        Text(
                                          " end-to-end encrypted",
                                          style: TextStyle(color: Colors.teal),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox(),
                      ],
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
