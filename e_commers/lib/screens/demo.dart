import 'package:flutter/material.dart';

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