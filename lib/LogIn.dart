import 'package:flutter/material.dart';
import 'package:minions/my_button/MyButton.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('image/glogo.png'),
            text: Text('Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),),
            color: Colors.white,
            radius: 4.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset('image/flogo.png'),
            text: Text('Login with facebook',
              style: TextStyle(color: Colors.white, fontSize: 15.0),),
            color: Color(0xFF334D92),
            radius: 4.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            text: Text('Login with Email',
              style: TextStyle(color: Colors.white, fontSize: 15.0),),
            color: Colors.green,
            radius: 4.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}