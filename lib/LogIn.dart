import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search)
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('assets/cheering_minions.gif'),
                      width: 300.0,
                      height: 320.0,
                    ),
                  ),
                  Form(
                    child: Theme(
                        data: ThemeData(
                            primaryColor: Colors.teal,
                            inputDecorationTheme: InputDecorationTheme(
                                labelStyle: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 15.0
                                )
                            )
                        ),
                        child: Container(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              TextField(
                                controller: controller,
                                decoration: InputDecoration(
                                    labelText: 'Enter "minion"'
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextField(
                                controller: controller2,
                                decoration: InputDecoration(
                                    labelText: 'Enter Password'
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(height: 40.0,),
                              ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if(controller.text == 'minion@gmail.com' && controller2.text == '1234') {
                                        Navigator.pushNamed(context, '/');
                                      } else if(controller.text == 'minion@gmail.com' && controller2.text != '1234') {
                                        showSnackBar2(context);
                                      } else if(controller.text != 'minion@gmail.com' && controller2.text == '1234') {
                                        showSnackBar3(context);
                                      } else {
                                        showSnackBar(context);
                                      }
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.amber[900])
                                    ),
                                  )
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text('로그인 정보를 다시 확인하세요',
        textAlign: TextAlign.center,
        ),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blue,

    )
  );
}

void showSnackBar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('비밀번호가 일치하지 않습니다',
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,

      )
  );
}

void showSnackBar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('메일 주소를 확인하세요',
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,

      )
  );
}