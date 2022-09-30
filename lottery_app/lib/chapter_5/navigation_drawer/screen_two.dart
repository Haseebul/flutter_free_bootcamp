import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = "screen_two";

  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Screen 2"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/login.jpg"),
                      ),
                    ),
                    title: Text("haseeb"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
