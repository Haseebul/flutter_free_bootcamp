import 'package:flutter/material.dart';

import '../constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color = const Color(0xffa5a5a5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                title,
                style: buttonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
