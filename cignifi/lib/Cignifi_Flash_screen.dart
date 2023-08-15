import 'package:flutter/material.dart';

class Flashscreen extends StatelessWidget {
  const Flashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Image.asset(
          "assets/images/cignifiwhite.png",
          height: 450,
          width: 450,
        ),
      ),
    );
  }
}
