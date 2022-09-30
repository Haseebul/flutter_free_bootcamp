import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textTitle;
  final VoidCallback onTap;
  const MyButton({super.key, required this.textTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Text("Click"),
        ),
      ),
    );
  }
}
