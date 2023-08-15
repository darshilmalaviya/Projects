import 'package:flutter/material.dart';
import 'package:medicines/Organic_Food/Menu_Organic_Food.dart';
import 'package:medicines/hevans/Cart_Heven.dart';
import 'package:medicines/hevans/Orderdetails_heven.dart';
import 'package:medicines/hevans/main_page_hevans.dart';

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
      home: CartHeven(),
    );
  }
}
