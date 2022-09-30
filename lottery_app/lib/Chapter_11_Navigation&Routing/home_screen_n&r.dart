import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/screen_two_n&r.dart';
import 'package:lottery_app/chapter_5/navigation_drawer/screen_two.dart';

class HomeScreenNR extends StatelessWidget {
  static const String id = "home_screen";

  const HomeScreenNR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("chapter 11"),
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
                //       return const ScreenTwoNR(name: 'haseeb',);
                //     },
                //   ),
                // );
                Navigator.pushNamed(context, ScreenTwoNR.id);
              },
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: const Center(
                  child: Text("Screen 1"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
