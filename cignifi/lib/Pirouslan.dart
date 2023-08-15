import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Psign extends StatelessWidget {
  const Psign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 350,
                    width: 392,
                    color: Colors.indigoAccent,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(color: Colors.grey),
                              color: Colors.white60),
                          child: Center(
                            child: Image.asset(
                              "assets/images/Pirouslan.png",
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "PIROUSLAN",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: -70,
                    child: Container(
                      height: 530,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                maxHeight: 60,
                              ),
                              alignLabelWithHint: true,
                              icon: Icon(Icons.person_outline),
                              labelText: "username",
                              labelStyle: TextStyle(color: Colors.teal),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                maxHeight: 60,
                              ),
                              alignLabelWithHint: true,
                              icon: Icon(Icons.lock_outline),
                              labelText: "password",
                              labelStyle: TextStyle(color: Colors.teal),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            height: 50,
                            width: 290,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 110,
                                ),
                                Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Icon(Icons.keyboard_arrow_right,
                                    color: Colors.white, size: 30),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Forgot password ?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 700,
                    width: 392,
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
