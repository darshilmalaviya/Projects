import 'package:flutter/material.dart';

class Tripregister extends StatelessWidget {
  const Tripregister({Key? key}) : super(key: key);

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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      "Welcome back\nAlice",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 90,
                                      width: 90,
                                      child: Center(
                                          child: Image.asset(
                                        "assets/images/man (1).png",
                                        height: 99,
                                        width: 99,
                                      )),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        border: Border.all(
                                          color: Colors.orange,
                                          width: 1.5,
                                        ),
                                      ),
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
                            obscureText: true,
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                maxHeight: 60,
                              ),
                              alignLabelWithHint: true,
                              icon: Icon(Icons.key),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.teal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 240,
                              ),
                              Text(
                                "Forgot password ?",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 15),
                              ),
                            ],
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
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Or sign in with",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 120,
                              ),
                              Center(
                                child: Image.asset(
                                    "assets/images/google-logo-png-google-logos-vector-eps-cdr-svg-download-10-removebg-preview.png",
                                    height: 40,
                                    width: 40),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Center(
                                child: Image.asset("assets/images/facebook.png",
                                    height: 30, width: 30),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Center(
                                child: Image.asset("assets/images/twitter.png",
                                    height: 50, width: 50),
                              )
                            ],
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
