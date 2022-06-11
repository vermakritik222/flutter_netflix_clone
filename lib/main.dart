import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Netflix UI',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Scaffold());
  }
}
