import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
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
