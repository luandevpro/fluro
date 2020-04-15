import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  ProfileView() : super();

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, "account/13");
          },
          child: Text('Account Id'),
        ),
      ),
    );
  }
}
