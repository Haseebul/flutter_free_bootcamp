import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/professional_way_routing/utils/routes_name.dart';

class HomeScreenProfessional extends StatefulWidget {
  const HomeScreenProfessional({super.key});

  @override
  State<HomeScreenProfessional> createState() => _HomeScreenProfessionalState();
}

class _HomeScreenProfessionalState extends State<HomeScreenProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("homeScreen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteName.screenOneProfessional,

                );
              },
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text("HomeScreen"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
