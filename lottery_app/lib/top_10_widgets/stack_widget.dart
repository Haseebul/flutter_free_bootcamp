import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    color: Colors.black.withOpacity(0.6),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 80,right: 80,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 150,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
