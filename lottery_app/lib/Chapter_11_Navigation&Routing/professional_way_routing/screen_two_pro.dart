import 'package:flutter/material.dart';

class ScreenTwoProfessional extends StatefulWidget {
  dynamic data;

  ScreenTwoProfessional({
    super.key,
    required this.data,
  });

  @override
  State<ScreenTwoProfessional> createState() => _ScreenTwoProfessionalState();
}

class _ScreenTwoProfessionalState extends State<ScreenTwoProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(widget.data["Node"]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(child: Text("ScreenTwo")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
