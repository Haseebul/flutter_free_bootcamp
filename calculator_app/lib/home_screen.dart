import 'package:calculator_app/components/my_button.dart';
import 'package:calculator_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(color: kWhiteColor, fontSize: 20),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(color: kWhiteColor),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: "AC",
                          onPressed: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+/-",
                          onPressed: () {
                            userInput += "+/-";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "%",
                          onPressed: () {
                            userInput += "%";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "/",
                          color: const Color(0xffffa00a),
                          onPressed: () {
                            userInput += "/";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "7",
                          onPressed: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "8",
                          onPressed: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "9",
                          onPressed: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "x",
                          color: const Color(0xffffa00a),
                          onPressed: () {
                            userInput += "x";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "4",
                          onPressed: () {
                            userInput += "4";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "5",
                          onPressed: () {
                            userInput += "5";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "6",
                          onPressed: () {
                            userInput += "6";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "-",
                          color: const Color(0xffffa00a),
                          onPressed: () {
                            userInput += "-";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "1",
                          onPressed: () {
                            userInput += "1";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "2",
                          onPressed: () {
                            userInput += "2";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "3",
                          onPressed: () {
                            userInput += "3";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+",
                          color: const Color(0xffffa00a),
                          onPressed: () {
                            userInput += "+";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "0",
                          onPressed: () {
                            userInput += "0";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: ".",
                          onPressed: () {
                            userInput += ".";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "DEL",
                          onPressed: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "=",
                          color: const Color(0xffffa00a),
                          onPressed: () {
                            equalPress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(finalUserInput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
