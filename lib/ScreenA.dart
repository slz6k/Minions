import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
        backgroundColor: Colors.amber[800],
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Go to the Home Page'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber[900])),
      )),
    );
  }
}
