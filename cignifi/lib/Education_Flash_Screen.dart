import 'package:flutter/material.dart';

class EducationFlashscreen extends StatelessWidget {
  const EducationFlashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Welcome to education app",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/images/flash_girl.png",
                height: 420,
                width: 270,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              height: 50,
              width: 230,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.indigo,
                    Color(0xff648def),
                    Color(0x67a1f7),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sign up",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
