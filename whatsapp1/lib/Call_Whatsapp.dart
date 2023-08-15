import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
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
        child: const Icon(Icons.call),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  maxRadius: 25,
                  child: Icon(Icons.link_rounded),
                ),
                title: Text(
                  "Create call link",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                subtitle: Text(
                  "Share a link for your Whatsapp call",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Recent",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                height: 1300,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ListTile(
                            horizontalTitleGap: 15,
                            contentPadding: const EdgeInsets.only(left: 15),
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    fit: BoxFit.cover),
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
                                const Icon(Icons.call_received,
                                    color: Colors.teal, size: 20),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(time[index]),
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: index % 2 == 0
                                  ? const Icon(
                                      Icons.video_call,
                                      color: Colors.teal,
                                      size: 25,
                                    )
                                  : const Icon(Icons.call, color: Colors.teal),
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
                                        Text("Your personal call are"),
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
