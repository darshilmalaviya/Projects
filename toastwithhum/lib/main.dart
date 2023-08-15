import 'package:flutter/material.dart';

import 'First_Page_Toast.dart';
import 'Second_Page_Toast.dart';

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
      home: Secondtoast(),
    );
  }
}
