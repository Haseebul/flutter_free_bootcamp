import 'package:flutter/material.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/components/my_button_component.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/components/text_form_field_component.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/screen_typs/admin_screen.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/screen_typs/student_screen.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/screen_typs/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Login"),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormFieldComponent(
              hintTextTitle: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 10),
            TextFormFieldComponent(
              hintTextTitle: 'Password',
              controller: passwordController,
            ),
            const SizedBox(height: 10),
            TextFormFieldComponent(
              hintTextTitle: 'Age',
              controller: ageController,
            ),
            const SizedBox(height: 10),
            TextFormFieldComponent(
              hintTextTitle: 'Type',
              controller: typeController,
            ),
            const SizedBox(height: 10),
            MyButton(
              textTitle: "Login",
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
                sp.setString("email", emailController.text.toString());
                sp.setString("age", ageController.text.toString());
                sp.setBool("isLogin", true);

                //admin, student, teacher
                sp.setString("userType", typeController.text.toString());

                if(sp.getString('userType')== "teacher"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return TeacherScreen();
                      },
                    ),
                  );
                }else if(sp.getString('userType')== "student"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return StudentScreen();
                      },
                    ),
                  );
                }else if(sp.getString('userType')== "admin"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return AdminScreen();
                      },
                    ),
                  );
                }

              },
            ),
          ],
        ),
      ),
    );
  }
//
// Future<void> haseeb()async{
//   await Future.delayed(const Duration(seconds: 10));
//   print("wait");
// }
}
