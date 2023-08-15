import 'package:flutter/material.dart';
import 'package:untitled2/sign_in_sheet.dart';

import 'Register_page.dart';
import 'cignifi_flash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flashscreen(),
    );
  }
}
