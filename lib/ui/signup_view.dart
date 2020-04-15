import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  SignupView() : super();

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: InkResponse(
        onTap: () {
          Navigator.pushNamed(context, "account/signin");
        },
        child: Center(
          child: Text('Đăng nhập'),
        ),
      ),
    );
  }
}
