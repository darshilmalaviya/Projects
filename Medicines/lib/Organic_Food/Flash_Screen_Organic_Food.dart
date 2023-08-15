import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicines/Organic_Food/Menu_Organic_Food.dart';

class Flashscreen extends StatefulWidget {
  const Flashscreen({Key? key}) : super(key: key);

  @override
  State<Flashscreen> createState() => _FlashscreenState();
}

class _FlashscreenState extends State<Flashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffbab63b),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 20),
                    child: Text(
                      "Get\nOrganic Food",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Find the freshest food and get\nfreedelevery in your town",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Filter(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: 65,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Color(0xfffbab63b),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 40),
                child: Row(
                  children: [
                    Center(
                      child: Image.asset("asset/images/Women.png",
                          height: 300, width: 270),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
