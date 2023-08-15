import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
  List time = [
    "8.56AM",
    "9.50PM",
    "8.56AM",
    "10.12AM",
    "Today 8.56AM",
    "8.56AM",
    "9.50PM",
    "yesterday 9.50PM",
    "yesterday 8.56AM",
    "yesterday 10.12AM",
    "yesterday 8.56AM",
    "yesterday 8.56AM",
    "yesterday 9.50PM",
    "yesterday 8.56AM",
    "yesterday 10.12AM",
  ];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: const Icon(Icons.camera_alt_outlined),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage("assets/images/darshil.jpg"),
                    ),
                    title: Text(
                      "My Status",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "Tap To Add Status Update",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Recent Update",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 1300,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: ListTile(
                          horizontalTitleGap: 15,
                          contentPadding: const EdgeInsets.only(left: 10),
                          leading: DottedBorder(
                            color: Colors.teal,
                            borderType: BorderType.Circle,
                            radius: const Radius.circular(50),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage(image[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            name[index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(time[index]),
                        ),
                      ),
                      index == 14
                          ? Column(
                              children: [
                                Divider(),
                                Container(
                                  height: 150,
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(Icons.lock,
                                          size: 15, color: Colors.grey),
                                      Text("Your status update are"),
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
                      index == 10
                          ? const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(
                                "Viewed updates",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
