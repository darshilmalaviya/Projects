import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  const CommonButton(this.onPressed, this.text, {super.key});
  final VoidCallback onPressed;
  final String text;

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text("${widget.text}"),
    );
  }
}
