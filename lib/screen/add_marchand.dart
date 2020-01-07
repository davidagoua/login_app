import 'package:flutter/material.dart';


class AddMarchand extends StatefulWidget {
  @override
  _AddMarchandState createState() => _AddMarchandState();
}

InputDecoration getInputDecoration(labelText){
  return InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
    labelText: labelText,
  );
}

class _AddMarchandState extends State<AddMarchand> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Inscription du marchand", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: getInputDecoration("Nom du marchand"),
                    validator: (value){

                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: getInputDecoration("Contact du marchand"),
                    validator: (value){

                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: getInputDecoration("Commune du marchand"),
                    validator: (value){

                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: getInputDecoration("Ville du marchand"),
                    validator: (value){

                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    decoration: getInputDecoration("mot de passe du marchand"),
                    validator: (value){

                    },
                  ),
                  SizedBox(height: 30,),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    color: Colors.blue[900],
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                    child: Text('Valider', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
