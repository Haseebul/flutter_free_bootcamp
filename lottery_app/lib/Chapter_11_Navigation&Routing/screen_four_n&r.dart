import 'package:flutter/material.dart';
class ScreenFourNR extends StatefulWidget {
  static const String id = "screen_four";
  const ScreenFourNR({Key? key}) : super(key: key);

  @override
  State<ScreenFourNR> createState() => _ScreenFourNRState();
}

class _ScreenFourNRState extends State<ScreenFourNR> {
  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(argument.toString(),),
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
              },
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: const Center(
                  child: Text("Screen 4"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
