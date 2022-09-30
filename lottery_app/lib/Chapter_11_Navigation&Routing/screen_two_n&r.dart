import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/screen_three_n&r.dart';

class ScreenTwoNR extends StatefulWidget {
  static const String id = "screen_two";
  final String name;
  final int number;

  const ScreenTwoNR({
    Key? key,
    required this.name,
    this.number = 8,
  }) : super(key: key);

  @override
  State<ScreenTwoNR> createState() => _ScreenTwoNRState();
}

class _ScreenTwoNRState extends State<ScreenTwoNR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${widget.name.toString()} ${widget.number.toString()}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const ScreenThreeNR();
                //     },
                //   ),
                // );
                Navigator.pushNamed(context, ScreenThreeNR.id);
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: const Center(
                  child: Text(
                    "Screen 2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
