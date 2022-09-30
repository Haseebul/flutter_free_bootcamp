import 'package:calculator_app/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // int numberOne = 2;
  // int numberTwo = 2;
  // int sum = numberOne + numberTwo;
  // int sub = numberOne - numberTwo;
  // int mul = numberOne * numberTwo;
  // double div = numberOne / numberTwo;
  // print(sum);
  // print(sub);
  // print(mul);
  // print(div.ceil());
   String a = "haseeb";
   print(a.length);
  // print(a[2]);
   print(a.substring(0, 3));
  // print(a.replaceAll('a', "*"));
  // if (numberOne > numberTwo) {
  //   print("yes");
  // } else {
  //   print("no");
 //  // }
  ////////////////////////
 //  String firstName = "haseeb";
 // // String secondName= " zafar";
 //  var fullName = firstName + "zafar";
 //  print(fullName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
