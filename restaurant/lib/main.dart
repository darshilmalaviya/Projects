import 'package:flutter/material.dart';

import 'Bottom_Nav_Restaurant.dart';
import 'Food_App/Bottom_Nav_Bar_Food_App.dart';
import 'Fruit/Bottom_Nav_Bar_Fruit.dart';
import 'Home_Page_Restaurant.dart';
import 'Search_Restaurant.dart';

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
      home: Fruit(),
    );
  }
}
