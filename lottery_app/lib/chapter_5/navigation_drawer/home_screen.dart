import 'package:flutter/material.dart';
import 'package:lottery_app/chapter_5/navigation_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff764abc),
        centerTitle: true,
        title: const Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/login.jpg"),
              ),
              decoration: BoxDecoration(
                color: Color(0xff764abc)
              ),
              accountName: Text("Haseeb ullah"),
              accountEmail: Text("haseebullah5044@gmail.com"),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title:  const Text("Page 1"),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title:  const Text("Page 2"),
              onTap: (){
                //Navigator.pushNamed(context, ScreenTwo.id)
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title:  const Text("Logout"),
              onTap: (){
                //Navigator.pushNamed(context, ScreenTwo.id)
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const ScreenTwo();
                  //     },
                  //   ),
                  // );
                },
                child: const Text("Screen 1"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
