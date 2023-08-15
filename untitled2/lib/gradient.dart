import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientDemo extends StatelessWidget {
  const GradientDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 900,
          width: 300,

          //alignment: Alignment.topCenter,
          //padding: EdgeInsets.symmetric(horizontal: 70),
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: [
                Colors.red,
                Colors.green,
                Colors.orange,
                Colors.black,
                Colors.blue,
                Colors.brown
              ],
              center: Alignment.center,
              startAngle: 0.8,
              endAngle: 6,
            ),
            // gradient: RadialGradient(
            //     colors: [Colors.red, Colors.green, Colors.orange, Colors.blue],
            //     radius: 0.1,
            //     center: Alignment.topRight,
            //     focal: Alignment.bottomLeft,
            //     focalRadius: 0.1),
            // gradient: LinearGradient(
            //   colors: [Colors.red, Colors.green, Colors.orange],
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.topRight,
            // ),
            color: Colors.white,
            // border:Border.all(
            //   color: Colors.red,
            //   width: 5
            // ),
            //sborderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20),),
            //shape: BoxShape.rectangle
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(2, 2),
                blurRadius: 2,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            children: [
              Center(
                child: Text("hello"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
