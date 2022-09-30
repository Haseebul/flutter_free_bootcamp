import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/professional_way_routing/utils/routes_name.dart';

import '../home_screen.dart';
import '../screen_one.dart';
import '../screen_two_pro.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreenProfessional:
        return MaterialPageRoute(
          builder: ((context) {
            return const HomeScreenProfessional();
          }),
        );
      case RouteName.screenOneProfessional:
        return MaterialPageRoute(
          builder: ((context) {
            return const ScreenOneProfessional();
          }),
        );
      case RouteName.screenTwoProfessional:
        return MaterialPageRoute(
          builder: ((context) {
            return ScreenTwoProfessional(
              data: settings.arguments as Map,
            );
          }),
        );
      default:
        return MaterialPageRoute(
          builder: ((context) {
            return const Scaffold(
              body: Center(
                child: Text("no routes found"),
              ),
            );
          }),
        );
    }
  }
}
