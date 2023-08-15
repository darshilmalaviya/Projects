import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Center(
              child: Image.asset(
                "assets/images/cignifi.png",
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 55,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1)),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 55,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1)),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Paassword",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 55,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.indigo,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1)),
                ],
              ),
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                "- or sign in with -",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Center(
                    child: Image.asset(
                      "assets/images/google-logo-png-google-logos-vector-eps-cdr-svg-download-10-removebg-preview.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.5,
                          spreadRadius: 0.3,
                          offset: Offset(0, 0.5)),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Image.asset(
                      "assets/images/newf.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.5,
                          spreadRadius: 0.3,
                          offset: Offset(0, 0.5)),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Image.asset(
                      "assets/images/twitter.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.5,
                          spreadRadius: 0.3,
                          offset: Offset(0, 0.5)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
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
