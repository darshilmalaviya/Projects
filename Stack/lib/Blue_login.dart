import 'package:flutter/material.dart';

class Bluelogin extends StatelessWidget {
  const Bluelogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 857,
                  width: 392,
                  color: Colors.white,
                ),
                Positioned(
                  top: -50,
                  left: -120,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
                Positioned(
                  top: -140,
                  left: 10,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 370,
                  child: Container(
                    height: 160,
                    width: 360,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 5,
                            spreadRadius: 0.5),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(90),
                          bottomRight: Radius.circular(90)),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person_outline,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                labelText: "Username",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Divider(
                              color: Colors.grey, height: 20, thickness: 1.5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock_outline_rounded,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 370,
                  right: 10,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Icon(
                      Icons.arrow_right_alt,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 555,
                  right: 100,
                  child: Text(
                    "Forgotpassword?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  top: 630,
                  child: Container(
                    height: 60,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -70,
                  right: -90,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -150,
                  right: 35,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
