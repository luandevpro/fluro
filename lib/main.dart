import 'package:flutter/material.dart';
import 'package:flutter_firebase/router.dart';
import 'package:flutter_firebase/ui/home_view.dart';

void main() {
  RouterFluro.configRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: HomeView(),
      onGenerateRoute: RouterFluro.router.generator,
    );
  }
}
