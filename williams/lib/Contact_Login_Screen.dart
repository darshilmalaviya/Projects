import 'package:flutter/material.dart';

import 'Contact_Otp_Screen.dart';

class Contactlogin extends StatelessWidget {
  Contactlogin({Key? key}) : super(key: key);

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
                    height: 856,
                    width: 392.5,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: -150,
                    left: -100,
                    child: Container(
                      height: 400,
                      width: 600,
                      decoration: BoxDecoration(
                        color: Color(0xfff018abe),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(280),
                          bottomRight: Radius.circular(280),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 110),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 170,
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_back_ios_outlined,
                                    size: 30, color: Colors.white),
                                SizedBox(
                                  width: 100,
                                ),
                                Text("PROFILE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "ALIUDEPUR   BOOK",
                                  style: TextStyle(
                                    color: Color(0xfff2e99f8),
                                    fontSize: 45,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 115,
                    child: Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.5),
                        color: Color(0xffff0f1d2),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Center(
                          child: Image.asset(
                        "assets/images/Logo.png",
                        height: 200,
                        width: 140,
                      )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 340, left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Color(0xffff5f5f5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Surname / અટક",
                                hintStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                                constraints: BoxConstraints(maxHeight: 50),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Color(0xffff5f5f5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Name / નામ ",
                                hintStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                                constraints: BoxConstraints(maxHeight: 50),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Color(0xffff5f5f5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Last Name / પિતા નુ નામ",
                                hintStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                                constraints: BoxConstraints(maxHeight: 50),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "ઘર નંબર",
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    constraints: BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 240,
                              decoration: BoxDecoration(
                                color: Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Society Name / સોસાયટીનુ નામ",
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    constraints: BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Area / વિસ્તાર",
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    constraints: BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "City / શહેર",
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    constraints: BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "State / રાજ્ય",
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    constraints: BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 22),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Pincode / પીન કોડ",
                                    hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                    constraints: BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Color(0xffff5f5f5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Mobile Number / મોબાઇલ નંબર ",
                                hintStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                                constraints: BoxConstraints(maxHeight: 50),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Contactotp(),
                              ),
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(color: Colors.black, width: 0.2),
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
                        ),
                      ],
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
