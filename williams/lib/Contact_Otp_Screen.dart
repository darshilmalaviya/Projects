import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactotp extends StatelessWidget {
  const Contactotp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat, size: 150, color: Colors.blue),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 30),
                      child: Row(
                        children: [
                          Text(
                            "Verification Code",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 30),
                      child: Row(
                        children: [
                          Text(
                            "Please enter the OTP sent to your",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "device",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 2,
                              ),
                              child: TextField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 40),
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 2,
                              ),
                              child: TextField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 40),
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 2,
                              ),
                              child: TextField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 40),
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 2,
                              ),
                              child: TextField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 40),
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.black, width: 0.2),
                      ),
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
