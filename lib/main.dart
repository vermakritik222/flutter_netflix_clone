import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/screens.dart';

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
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.black,
        ),
        home: const Navbar());
  }
}
