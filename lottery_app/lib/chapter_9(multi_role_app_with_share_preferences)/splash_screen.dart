import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottery_app/chapter_5/navigation_drawer/home_screen.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/home_screen.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/screen_typs/admin_screen.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/screen_typs/student_screen.dart';
import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/screen_typs/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init function");
    isLogin();
  }

  void isLogin()async{
    SharedPreferences sp =await SharedPreferences.getInstance();

    bool isLogin = sp.getBool("isLogin") ?? false;
    String type = sp.getString('userType')?? "";

    if(isLogin){
      if(type =='student'){
        Timer(
          const Duration(seconds: 3),
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const StudentScreen();
                },
              ),
            );
          },
        );
      }else if(type == 'teacher'){
        Timer(
          const Duration(seconds: 3),
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const TeacherScreen();
                },
              ),
            );
          },
        );
      }else if(type == 'admin'){
        Timer(
          const Duration(seconds: 3),
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const AdminScreen();
                },
              ),
            );
          },
        );
      }

    }else{
      Timer(
        const Duration(seconds: 3),
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginScreen();
              },
            ),
          );
        },
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    print("build function");
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage("assets/login.jpg"),
        ),
      ),
    );
  }
}
