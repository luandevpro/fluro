import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  final Map data;
  UserView(this.data) : super();

  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Text('User ${widget.data['accountId'][0]}'),
      ),
    );
  }
}
