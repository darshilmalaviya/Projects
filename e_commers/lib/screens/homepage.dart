// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:note/screens/updateData.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'common.dart';
import 'createNewnotes.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Color selectcolor = Colors.black38;

  CollectionReference notekeeper =
      FirebaseFirestore.instance.collection("notes_Keeper");

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String day = DateFormat('EEEE').format(date);
    String month = DateFormat('MMM').format(date);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: h,
          width: w,
          child: Padding(
            padding: EdgeInsets.only(top: h * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: getdatetext(
                      day: day, date: date.day.toString(), month: month),
                ),
                SizedBox(
                  height: h * 0.15,
                  child: StreamBuilder(
                    stream: notekeeper.snapshots(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      int datalength = snapshot.data?.docs.length ?? 0;
                      if (!snapshot.hasData) {
                        return const Center(
                          child: Text("Not Found Data"),
                        );
                      } else if (snapshot.hasError) {
                        const Center(
                          child: Text("Error"),
                        );
                      } else if (snapshot.hasData) {
                        return Padding(
                          padding: EdgeInsets.only(top: h * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: Column(
                                  children: [
                                    CommonText(
                                        text: datalength.toString(),
                                        fontsize: 20,
                                        fontWeight: FontWeight.bold),
                                    CommonText(
                                        text: "Created tasks",
                                        fontWeight: FontWeight.bold,
                                        fontsize: 16,
                                        color: Colors.black38)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Expanded(
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("notes_Keeper")
                        .snapshots(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: snapshot.data?.docs.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          final DocumentSnapshot documentSnapshot =
                              snapshot.data!.docs[index];
                          bool like = documentSnapshot['confirm'];
                          bool selectcolor = documentSnapshot['color'];
                          if (!snapshot.hasData) {
                            return const Center(
                              child: Text("note data founde"),
                            );
                          } else if (snapshot.hasError) {
                            return const Center(
                              child: Text("note data error"),
                            );
                          } else if (snapshot.hasData) {
                            return ListTile(
                              leading: IconButton(
                                icon: like
                                    ? Icon(
                                        Icons.task_alt,
                                        color: Colors.green.shade300,
                                      )
                                    : const Icon(
                                        Icons.adjust_rounded,
                                        color: Colors.black38,
                                      ),
                                onPressed: () async {
                                  like = !like;

                                  setState(() {});

                                  if (like == false) {
                                    DocumentReference document =
                                        notekeeper.doc(documentSnapshot.id);
                                    Map<String, dynamic> data = {
                                      "confirm": false,
                                      "color": false
                                    };
                                    await document.update(data);

                                    Fluttertoast.showToast(
                                        msg: "Task Uncompleted",
                                        fontSize: 18,
                                        backgroundColor: Colors.black);

                                    setState(() {});
                                  } else {
                                    DocumentReference document =
                                        notekeeper.doc(documentSnapshot.id);
                                    Map<String, dynamic> data = {
                                      "confirm": true,
                                      "color": true
                                    };
                                    await document.update(data);

                                    Fluttertoast.showToast(
                                        msg: "Task Completed",
                                        fontSize: 18,
                                        backgroundColor: Colors.black);

                                    setState(() {});
                                  }
                                },
                              ),
                              title: CommonText(
                                  text: documentSnapshot['notetext'],
                                  fontWeight: FontWeight.bold,
                                  color: selectcolor == false
                                      ? Colors.black38
                                      : Colors.black,
                                  fontsize: 16),
                              trailing: SizedBox(
                                width: w * 0.27,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.black38,
                                      ),
                                      onPressed: () {
                                        updettext =
                                            documentSnapshot['notetext'];
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => UpdetScreen(
                                                id: documentSnapshot.id),
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.black38),
                                      onPressed: () {
                                        AwesomeDialog(
                                          context: context,
                                          title: "Warning",
                                          body: const Text(
                                              "Are you sure you want to delete the Task?"),
                                          dialogType: DialogType.WARNING,
                                          animType: AnimType.BOTTOMSLIDE,
                                          btnCancelOnPress: () {},
                                          btnOkOnPress: () async {
                                            DocumentReference document =
                                                notekeeper
                                                    .doc(documentSnapshot.id);

                                            await document.delete();
                                          },
                                        ).show();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Colors.green.shade300,
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddScreen(),
            ),
          );
        },
        backgroundColor: Colors.green.shade300,
        child: const Icon(Icons.add),
      ),
    );
  }
}
