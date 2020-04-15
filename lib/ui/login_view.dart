import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView() : super();

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: InkResponse(
        onTap: () {
          Navigator.pushNamed(context, "account/signup");
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blue,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "account/profile");
                  },
                  child: Text('Profile', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 50),
              Container(
                color: Colors.purple,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "account/signup");
                  },
                  child: Text('Signup', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
