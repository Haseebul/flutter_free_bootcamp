import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //const SizedBox(height: 20),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const SizedBox(
              height: 100,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const Center(
              child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.green,
                //child: Icon(Icons.person),
                backgroundImage: AssetImage("assets/login.jpg"),
              ),
            ),
            const Divider(color: Colors.black,thickness: 2,),
            Row(
              children: const [
                Expanded(
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.green,
                    //child: Icon(Icons.person),
                    backgroundImage: AssetImage("assets/login.jpg"),
                  ),
                ),
                SizedBox(
                  height: 230,
                  child: VerticalDivider(color: Colors.black,thickness: 2,),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.green,
                    //child: Icon(Icons.person),
                    backgroundImage: AssetImage("assets/login.jpg"),
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.black,thickness: 2,),
          ],
        ),
      ),
    );
  }
}
