import 'package:flutter/material.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lottery App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Lottery winning number is 4"),
          ),
          Container(
            height: x == 4 ? 600 : 250,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: x == 4
                  ? Colors.teal.withOpacity(0.3)
                  : Colors.grey.withOpacity(0.3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          size: 35,
                          color: Colors.green,
                        ),
                        Text(
                          "Congratulation you have won the lottery, \n your number is $x",
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          size: 35,
                          color: Colors.red,
                        ),
                        Text(
                          "Better luck next time your number is $x \n try again",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(random.nextInt(6));
          x = random.nextInt(6);
          print(x);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
