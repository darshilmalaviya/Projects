import 'package:flutter/material.dart';

class RowColumn2 extends StatelessWidget {
  const RowColumn2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Row(
            children: [
              Container(
                height: 856 / 3,
                width: 392 / 2,
                color: Colors.blue,
              ),
              Container(
                height: 856 / 3,
                width: 392 / 2,
                color: Colors.brown,
                child: Row(
                  children: [
                    Container(
                      height: 856 / 3,
                      width: 360 / 4,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 856 / 3,
                      width: 392 / 4,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 856 / 3,
                width: 392 / 2,
                color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      height: 856 / 6,
                      width: 392 / 2,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      height: 856 / 6,
                      width: 392 / 2,
                      color: Colors.indigo,
                    ),
                  ],
                ),
              ),
              Container(
                height: 856 / 3,
                width: 392 / 2,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 856 / 3,
                width: 392 / 2,
                color: Colors.brown,
                child: Row(
                  children: [
                    Container(
                      height: 856 / 3,
                      width: 392 / 4,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 856 / 3,
                      width: 392 / 4,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                height: 856 / 3,
                width: 392 / 2,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
