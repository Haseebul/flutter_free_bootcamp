import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          const Expanded(
            flex: 1,
            child:  ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/login.jpg"),
              ),
              title: Text("H Tech"),
              subtitle: Text("Subscribe my channel"),
              trailing: Text("3:23:23"),
            ),
          ),
          Expanded(flex: 5,
            child : ListView.builder(
                itemCount: 13,
                itemBuilder: (context,index){
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/login.jpg"),
                ),
                title: Text("H Tech"),
                subtitle: Text("Subscribe my channel"),
                trailing: Text("3:23:23"),
              );
            }),
          )
        ],
      ),
    );
  }
}
