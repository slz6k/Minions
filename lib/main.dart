import 'package:flutter/material.dart';
import 'package:minions/Home.dart';
import 'package:minions/LogIn.dart';
import 'package:minions/ScreenA.dart';
import 'package:minions/ScreenB.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Despicable Me",
      initialRoute: '/login',
      routes: {
        '/login': (context) => LogIn(),
        '/': (context) => Home(),
        '/a': (context) => ScreenA(),
        '/b': (context) => ScreenB()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
