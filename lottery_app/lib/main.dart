// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/home_screen_n&r.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/screen_four_n&r.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/screen_three_n&r.dart';
import 'package:lottery_app/Chapter_11_Navigation&Routing/screen_two_n&r.dart';
// import 'package:lottery_app/chapter_10_api_course/Models/PostModel.dart';
// import 'package:lottery_app/chapter_10_api_course/api_home_screen.dart';
// import 'package:lottery_app/chapter_10_api_course/get_api/example_five.dart';
import 'package:lottery_app/chapter_10_api_course/get_api/example_four.dart';

import 'Chapter_11_Navigation&Routing/professional_way_routing/utils/routes.dart';
import 'Chapter_11_Navigation&Routing/professional_way_routing/utils/routes_name.dart';
// import 'package:lottery_app/chapter_10_api_course/get_api/example_one.dart';
// import 'package:lottery_app/chapter_10_api_course/get_api/example_three.dart';
// import 'package:lottery_app/chapter_10_api_course/get_api/example_two.dart';
// import 'package:lottery_app/chapter_5/navigation_drawer/screen_two_n&r.dart';
// import 'package:lottery_app/chapter_9(multi_role_app_with_share_preferences)/splash_screen.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal.withOpacity(0.3),
      ),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => const HomeScreen(),
      //   ScreenTwo.id: (context) => const ScreenTwo(),
      // },
     // home: const HomeScreenNR(),

      // initialRoute: HomeScreenNR.id,
      // routes: {
      //   HomeScreenNR.id: (context)=> const HomeScreenNR(),
      //   ScreenTwoNR.id: (context) => const ScreenTwoNR(name: ""),
      //   ScreenThreeNR.id: (context) => const ScreenThreeNR(),
      //   ScreenFourNR.id: (context) => const ScreenFourNR()
      //
      //
      // },

      initialRoute: RouteName.homeScreenProfessional,
       onGenerateRoute: Routes.generateRoute,
    );
  }
}

//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   Random random = Random();
//   int x = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text("Lottery App"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Text("Lottery winning number is 4 "),
//             ),
//             Container(
//               height: x == 4 ? 600 : 250,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: x == 4 ? Colors.teal : Colors.grey.withOpacity(0.3),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: x == 4
//                     ? Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.done_all,
//                             color: Colors.green,
//                             size: 35,
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             "Congratulation you have won the lottery,\n your number is  $x",
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       )
//                     : Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.error,
//                             color: Colors.red,
//                             size: 35,
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             "Better luck next time your number is $x \n try again",
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//               ),
//             )
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             print(random.nextInt(6).toString());
//             x = random.nextInt(6);
//             print(x);
//             setState(() {});
//           },
//           child: const Icon(Icons.refresh),
//         ),
//       ),
//     );
//   }
// }
