import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/professional_way_routing/utils/routes_name.dart';

class ScreenOneProfessional extends StatefulWidget {
  const ScreenOneProfessional({super.key});

  @override
  State<ScreenOneProfessional> createState() => _ScreenOneProfessionalState();
}

class _ScreenOneProfessionalState extends State<ScreenOneProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ScreenOne"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenTwoProfessional,
                  arguments: {
                    "Node": "js module",
                    "flutter": "good for app development"
                  },
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(child: Text("ScreenOne")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
