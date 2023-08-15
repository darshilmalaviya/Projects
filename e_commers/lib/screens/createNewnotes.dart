// ignore_for_file: prefer_const_constructors_in_immutables, use_build_context_synchronously, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'common.dart';

class AddScreen extends StatefulWidget {
  AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController controller = TextEditingController();
  CollectionReference notekeeper =
      FirebaseFirestore.instance.collection("notes_Keeper");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: CommonText(text: "Create Note"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.05, right: width * 0.06, left: width * 0.06),
              child: gettextfild(controller: controller),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getbutton(
                    text: "Cancel",
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                  getbutton(
                    text: "Create",
                    ontap: () async {
                      await notekeeper.add(
                        {
                          "notetext": controller.text,
                          "confirm": false,
                          "color": false,
                        },
                      ).then(
                        (value) => Fluttertoast.showToast(
                            msg: "Task Created",
                            fontSize: 18,
                            backgroundColor: Colors.green.shade300),
                      );
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
