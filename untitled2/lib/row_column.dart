import 'dart:ffi';

import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 150),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              SizedBox(width: 10),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
