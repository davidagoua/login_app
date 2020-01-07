import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screen/commercial_home.dart';
import 'package:login_app/screen/marchand_home.dart';


class LoginFormWidget extends StatefulWidget {

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {

  var _loginFormKey = GlobalKey<FormState>();
  var login = true;

  String contact = null;
  String password = null;

  List users = [
    User()
    ..contact = '53535353'
    ..password = '123456'
    ..nom = 'Jeff kenedy'
    ..type = 1
    ..id = 0,
    User()
      ..contact = '52088072'
      ..password = '123456'
      ..nom = 'Pharmacie phoenix'
      ..type = 2
      ..id = 1,
  ];

  InputDecoration getInputDecoration(labelText){
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      labelText: labelText,
    );
  }

  User authenticate(String contact, String password){
    try {
      return users.singleWhere((element){
        return contact == element.contact && password == element.password ;
      });
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _loginFormKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' AUTHENTIFICATION',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue[900]),
              ),
              SizedBox(height: 30,),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: getInputDecoration("Entrez votre contact"),
                validator: (value){
                  if(value.isEmpty){
                    return "Veuillez entrez votre contact";
                  }else{
                    contact = value;
                  }
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: getInputDecoration("Entrez votre mot de passe"),
                validator: (value){
                  if(value.isEmpty){
                    return "Mot de passe invalide";
                  }else{
                    password = value;
                  }
                },
                obscureText: true,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue[800],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    padding: EdgeInsets.all(15),
                    onPressed: (){
                      if(_loginFormKey.currentState.validate()){
                        var user = authenticate(contact, password);
                        if(user != null){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return user.type == 1 ? CommercialHome(user: user) : MarchandHome(user: user);
                          }));
                        }else{
                          Scaffold.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("désolé, contact ou mot de passe invalide !", textAlign: TextAlign.center,))
                          );
                        }
                      }
                    },
                    child: Text('Se connecter'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
