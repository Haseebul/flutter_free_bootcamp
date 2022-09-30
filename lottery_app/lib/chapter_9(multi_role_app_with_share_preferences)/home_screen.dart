import 'package:flutter/material.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/components/my_button_component.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  String email = '';
  String age = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString("email") ?? "";
    age = sp.getString("age") ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Center(
              child: Text("HomeScreen"),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("email:"),
                Text(
                  email.toString(),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("age:"),
                Text(
                  age.toString(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MyButton(
              textTitle: 'LogOut',
              onTap: () async {
                // haseeb();
                ///////////////////////////////
                // SharedPreferences sp = await SharedPreferences.getInstance();
                // sp.setString('name', 'Haseeb');
                // sp.setInt('age', 12);
                // sp.setBool("login", false);
                //
                //
                //
                // print(sp.getString('name'));
                // print(sp.getInt("age").toString());
                // print(sp.getBool("login"));
                //
                // sp.remove('name');
                // print(sp.getString('name'));
                //
                // sp.setString('name', 'haseebullah');
                //
                // print(sp.getString('name'));

                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
