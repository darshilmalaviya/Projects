import 'package:flutter/material.dart';

class Row5 extends StatelessWidget {
  const Row5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Row(
            children: [
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.green,
              ),
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.pink,
                      child: Row(
                        children: [
                          Container(
                            height: 856 / 8,
                            width: 392 / 4,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 856 / 8,
                            width: 392 / 4,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.brown,
                child: Column(
                  children: [
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.yellow,
                      child: Row(
                        children: [
                          Container(
                            height: 856 / 8,
                            width: 392 / 5,
                            color: Colors.red,
                          ),
                          Container(
                            height: 856 / 8,
                            width: 392 / 3.34,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.green,
                      child: Row(
                        children: [
                          Container(
                            height: 856 / 8,
                            width: 392 / 3,
                            color: Colors.white,
                          ),
                          Container(
                            height: 856 / 8,
                            width: 392 / 6,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.green,
                child: Row(
                  children: [
                    Container(
                      height: 856 / 4,
                      width: 392 / 4,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 856 / 4,
                      width: 392 / 4,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.blue,
              ),
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Container(
                            height: 856 / 8,
                            width: 392 / 4,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 856 / 8,
                            width: 392 / 4,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 856 / 8,
                      width: 392 / 2,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            height: 856 / 8,
                            width: 392 / 4,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 856 / 8,
                            width: 392 / 4,
                            color: Colors.red,
                            child: Column(
                              children: [
                                Container(
                                  height: 856 / 16,
                                  width: 392 / 4,
                                  color: Colors.blueGrey,
                                ),
                                Container(
                                  height: 856 / 16,
                                  width: 392 / 4,
                                  color: Colors.brown,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 856 / 4,
                width: 392 / 2,
                color: Colors.green,
                child: Row(
                  children: [
                    Container(
                      height: 856 / 4,
                      width: 392 / 4.9,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 856 / 4,
                      width: 392 / 3.38,
                      color: Colors.greenAccent,
                      child: Column(
                        children: [
                          Container(
                            height: 856 / 8,
                            width: 392 / 3,
                            color: Colors.black,
                          ),
                          Container(
                            height: 856 / 8,
                            width: 392 / 3.4,
                            color: Colors.brown,
                            child: Row(
                              children: [
                                Container(
                                  height: 856 / 8,
                                  width: 392 / 6.9,
                                  color: Colors.brown,
                                ),
                                Container(
                                  height: 856 / 8,
                                  width: 392 / 6.72,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
