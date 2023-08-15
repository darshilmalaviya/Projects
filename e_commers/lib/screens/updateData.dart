// ignore_for_file: must_be_immutable, use_build_context_synchronously, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'common.dart';

String? updettext;

class UpdetScreen extends StatefulWidget {
  String id;

  UpdetScreen({
    Key? key,
    required this.id,
  }) : super(key: key);
  @override
  State<UpdetScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<UpdetScreen> {
  TextEditingController controller = TextEditingController(text: updettext);
  CollectionReference notekeeper =
      FirebaseFirestore.instance.collection("notes_Keeper");
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double weight = MediaQuery.of(context).size.width;
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
                  top: height * 0.05,
                  right: weight * 0.06,
                  left: weight * 0.06),
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
                      }),
                  getbutton(
                    text: "Update",
                    ontap: () async {
                      DocumentReference document = notekeeper.doc(widget.id);
                      Map<String, dynamic> data = {
                        "notetext": controller.text,
                        "confirm": false
                      };
                      await document.update(data);
                      Navigator.pop(context);
                      Fluttertoast.showToast(
                          msg: "Task Updated",
                          fontSize: 18,
                          backgroundColor: Colors.blueAccent);
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
