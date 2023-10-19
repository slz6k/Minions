import 'package:flutter/material.dart';
import 'package:minions/Home.dart';
import 'package:minions/LogIn.dart';
import 'package:minions/screens/weather_screen.dart';
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
        '/': (context) => Home(),
        '/login': (context) => LogIn(),
        '/loading': (context) => Loading(),
        '/weather': (context) => WeatherScreen(),
        '/dice': (context) => Dice()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
