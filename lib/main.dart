import 'package:flutter/material.dart';
import 'package:login_app/screen/commercial_home.dart';
import 'package:login_app/widgets/loginformwidget.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: StartPage(),
      routes: {
        'commercial_home': (builder){ return CommercialHome();},
        'marchand_home': (builder){ return CommercialHome();},
      },
    );
  }
}


class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Center(
              child:Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black, offset: Offset(5, 5), blurRadius: 10)]
                ),
                child: LoginFormWidget(),
              )
          ),
        ),
      ),
    );
  }
}



