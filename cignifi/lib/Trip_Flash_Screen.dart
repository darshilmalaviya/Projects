import 'package:cignifi/stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Trip_Sign_up.dart';
import 'Trip_register.dart';

class TripFlash extends StatelessWidget {
  const TripFlash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    SizedBox(
                      height: 300,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tripsignup(),
                          ),
                        );
                      },
                      child: Container(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tripregister(),
                          ),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
