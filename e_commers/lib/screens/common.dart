// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'package:flutter/material.dart';

RichText getdatetext(
    {required String day, required String date, required String month}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
            text: "${day},",
            style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "  ${date.toString().padLeft(2, '0')} $month",
            style: const TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300))
      ],
    ),
  );
}

Text CommonText(
    {required String text,
    Color? color,
    FontWeight? fontWeight,
    double? fontsize}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
        fontSize: fontsize,
        fontFamily: "roboto",
        color: color,
        fontWeight: fontWeight),
  );
}

TextField gettextfild({
  required TextEditingController controller,
}) {
  return TextField(
    cursorColor: Colors.green.shade300,
    keyboardType: TextInputType.multiline,
    maxLines: null,
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.note_rounded,
          color: Colors.green.shade300,
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green.shade300, width: 2)),
        hintText: "Write Note",
        hintStyle: const TextStyle(
            fontSize: 17, fontWeight: FontWeight.w300, color: Colors.black38),
        border: const OutlineInputBorder()),
    controller: controller,
  );
}

InkWell getbutton({required String text, required Function() ontap}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 60,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.green.shade300, borderRadius: BorderRadius.circular(6)),
      child: Text(
        text,
        style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
