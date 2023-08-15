import 'package:flutter/material.dart';

import 'Blue_login.dart';
import 'Orange_Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bluelogin(),
    );
  }
}
