import 'package:flutter/material.dart';

class Tripsignup extends StatelessWidget {
  const Tripsignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 822.9,
                    width: 392,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/beach.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Image.asset("assets/images/Gallery.png",
                                  height: 60, width: 80),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          "Enjoy the trip with me",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 300,
                    child: Container(
                      height: 570,
                      width: 392,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "New",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Account",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 50),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        border: Border.all(
                                            color: Colors.orange, width: 1.5),
                                      ),
                                      child: Icon(Icons.camera_alt_outlined,
                                          size: 50),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "Upload picture",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.1,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                maxHeight: 60,
                              ),
                              alignLabelWithHint: true,
                              prefix: Icon(Icons.email_outlined),
                              labelText: "Email",
                              labelStyle: TextStyle(color: Colors.teal),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                maxHeight: 60,
                              ),
                              alignLabelWithHint: true,
                              prefix: Icon(Icons.person_outline),
                              labelText: "Username",
                              labelStyle: TextStyle(color: Colors.teal),
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                maxHeight: 60,
                              ),
                              alignLabelWithHint: true,
                              prefix: Icon(Icons.key),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.teal),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 70,
                            width: 290,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
