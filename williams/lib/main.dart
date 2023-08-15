import 'package:flutter/material.dart';

import 'Contact_Login_Screen.dart';
import 'Contact_Otp_Screen.dart';
import 'Login.dart';
import 'Register.dart';

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
      home: Contactlogin(),
    );
  }
}
