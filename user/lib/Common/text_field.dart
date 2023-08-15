import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonTextFormField extends StatefulWidget {
  const CommonTextFormField({
    Key? key,
    required this.keyboardType,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(),
        constraints: BoxConstraints(maxWidth: 388.w, maxHeight: 56.h),
        filled: true,
        fillColor: const Color(0xfffF7F7F7),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.8.h),
          borderSide: BorderSide(
            color: const Color(0xffE0E0E0),
            width: 0.4.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.8.h),
          borderSide: BorderSide(
            color: const Color(0xffE0E0E0),
            width: 0.4.w,
          ),
        ),
      ),
    );
  }
}
