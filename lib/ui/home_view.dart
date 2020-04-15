import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigation),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "account/signin",
            );
          },
        ),
        body: Center(child: Text('Home View')));
  }
}
