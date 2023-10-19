import 'package:flutter/material.dart';
import 'package:minions/Home.dart';
import 'package:minions/LogIn.dart';
import 'package:minions/weather.dart';
import 'package:minions/Dice.dart';
import 'package:minions/screens/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Despicable Me",
      initialRoute: '/',
      routes: {
        '/loading': (context) => Loading(),
        '/login': (context) => LogIn(),
        '/': (context) => Home(),
        '/weather': (context) => Weather(),
        '/dice': (context) => Dice()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
