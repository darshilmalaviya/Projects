import 'package:flutter/material.dart';

import 'Appbar_Whatsapp.dart';
import 'expansion_tile.dart';

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
      home: AppBarDemo(),
    );
  }
}
