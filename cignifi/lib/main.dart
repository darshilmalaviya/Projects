import 'package:cignifi/spooky_login_page.dart';
import 'package:cignifi/stack.dart';
import 'package:cignifi/textfield.dart';
import 'package:flutter/material.dart';

import 'Cignifi_Flash_screen.dart';
import 'Education_Flash_Screen.dart';
import 'Education_Login_page.dart';
import 'Education_Registor_page.dart';
import 'Pirouslan.dart';
import 'Pirouslan_register.dart';
import 'Sooky_Sign_Up_Page.dart';
import 'Spooky_Flash_Screen.dart';
import 'Trip_Flash_Screen.dart';
import 'Trip_Sign_up.dart';
import 'Trip_register.dart';
import 'spooky_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TripFlash(),
    );
  }
}
