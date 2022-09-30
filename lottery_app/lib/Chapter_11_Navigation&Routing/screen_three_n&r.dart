import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/screen_four_n&r.dart';

class ScreenThreeNR extends StatefulWidget {
  static const String id = "screen_three";

  const ScreenThreeNR({Key? key}) : super(key: key);

  @override
  State<ScreenThreeNR> createState() => _ScreenThreeNRState();
}

class _ScreenThreeNRState extends State<ScreenThreeNR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screen 3"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ScreenFourNR.id,
                  arguments: {
                    "name": "haseeb",
                    "age": 23,
                  },
                );
              },
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: const Center(
                  child: Text(
                    "Screen 3",
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
