import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:sizer/sizer.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  var data = 0;
  CollectionReference Users = FirebaseFirestore.instance.collection('users');
  File? image;
  ImagePicker imagePicker = ImagePicker();
  FirebaseStorage storage = FirebaseStorage.instance;
  TextEditingController Firstname = TextEditingController();
  TextEditingController Lastname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Center(
                  child: GestureDetector(
                    onTap: () async {
                      if (image == null) {
                        XFile? file = await imagePicker.pickImage(
                            source: ImageSource.gallery, imageQuality: 100);

                        image = File(file!.path);
                        print('PATHH ${file.path}');
                        setState(() {});
                      } else {
                        image = null;
                        setState(() {});
                      }
                    },
                    child: CircleAvatar(
                      maxRadius: 50,
                      child: image == null
                          ? const Icon(Icons.image, size: 40)
                          : Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: FileImage(
                                    image!,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: TextField(
                  controller: Firstname,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "First name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: TextField(
                  controller: Lastname,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Last name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      data++;
                    });
                    await storage
                        .ref("profile/${data}.png")
                        .putFile(image!)
                        .then(
                      (p0) async {
                        String url = await p0.ref.getDownloadURL();

                        print('URL ${url}');
                        await Users.add(
                          {
                            "Profile": url,
                            "First name": Firstname.text,
                            "Last name": Lastname.text,
                          },
                        );
                      },
                    );
                  },
                  child: Text("Add"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
