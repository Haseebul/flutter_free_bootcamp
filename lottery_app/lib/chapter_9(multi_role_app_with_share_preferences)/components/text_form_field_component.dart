import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  final String hintTextTitle;
  final TextEditingController controller;
  const TextFormFieldComponent({
    super.key,
    required this.hintTextTitle,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.teal,
      decoration: InputDecoration(
        hintText: hintTextTitle,
        hintStyle: const TextStyle(color: Colors.white),
        fillColor: Colors.teal.withOpacity(0.3),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.teal,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.9,
          ),
        ),
      ),
    );
  }
}
