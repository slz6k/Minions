import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('Dice Game'),
        backgroundColor: Colors.amber[800],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset('image/dice$leftDice.png')
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: Image.asset('image/dice$rightDice.png')
                    )
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    });
                    showToast("Left dice: $leftDice, Right dice: $rightDice");
                  },
                  child: Icon(Icons.play_arrow),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber[900])
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  },
                child: Text('Go to the Home'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber[900])
                ),
              ),
            ],
          )
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(msg: message,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
  );
}