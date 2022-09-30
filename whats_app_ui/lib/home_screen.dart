import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.white,
      Colors.tealAccent,
      Colors.teal,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
      //fontFamily: 'Horizon',
    );
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(FontAwesomeIcons.searchengin),
            const SizedBox(width: 10),
            //Icon(Icons.more_horiz_outlined),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
              itemBuilder: (
                context,
              ) =>
                  const [
                PopupMenuItem(
                  value: 1,
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Linked devices"),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text("Sharred messages"),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text("Settings"),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
          centerTitle: false,
          title: SizedBox(
            width: 200.0,
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'WhatsApp',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
          //title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text("Chat")),
              Tab(child: Text("Status")),
              Tab(child: Text("Call")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                const Padding(
                  key: Key('showMore'),
                  padding: EdgeInsets.all(16.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    preDataText: "AMANDA",
                    preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                    style: TextStyle(color: Colors.black),
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '...Show more',
                    trimExpandedText: ' show less',
                  ),
                ),
                Badge(
                  //position: BadgePosition.topStart(),
                  badgeContent: const Text("1"),
                  animationType: BadgeAnimationType.slide,
                  animationDuration: const Duration(milliseconds: 800),
                  shape: BadgeShape.circle,
                  //badgeColor: Colors.red,
                  child: Icon(Icons.settings),
                ),
                Badge(
                  //position: BadgePosition.topStart(),
                  badgeContent: const Text("2"),
                  animationType: BadgeAnimationType.slide,
                  animationDuration: const Duration(milliseconds: 800),
                  shape: BadgeShape.circle,
                  //badgeColor: Colors.red,
                  child: Icon(Icons.settings),
                )
              ],
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(),
                  title: Text("flutter"),
                  subtitle: Text("ab kia ha"),
                  trailing: Text("1:23:45"),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("My Status"),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 4,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/login.jpg"),
                          ),
                        ),
                        title: const Text("flutter"),
                        subtitle: Text(
                          index / 2 == 0 ? "audio call " : "video call",
                        ),
                        trailing: Icon(
                          index / 2 == 0 ? Icons.phone : Icons.video_call,
                        ),
                      ),
                    ],
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 4,
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/login.jpg"),
                      ),
                    ),
                    title: const Text("flutter"),
                    subtitle: Text(
                      index / 2 == 0 ? "audio call " : "video call",
                    ),
                    trailing: Icon(
                      index / 2 == 0 ? Icons.phone : Icons.video_call,
                    ),
                  );
                }
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(),
                  title: const Text("flutter"),
                  subtitle: Text(
                    index / 2 == 0 ? "audio call " : "video call",
                  ),
                  trailing: Icon(
                    index / 2 == 0 ? Icons.phone : Icons.video_call,
                  ),
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.chat),
          onPressed: () {},
        ),
      ),
    );
  }
}
