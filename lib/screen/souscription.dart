import 'package:flutter/material.dart';


class SouscriptionScreen extends StatefulWidget {
  @override
  _SouscriptoinScreenState createState() => _SouscriptoinScreenState();
}

InputDecoration getInputDecoration(labelText){
  return InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
    labelText: labelText,
  );
}

class _SouscriptoinScreenState extends State<SouscriptionScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: <Widget>[
                Text("Inscription du marchand", style: TextStyle(fontSize: 20)),
                SizedBox(height: 30,),
                TextFormField(
                  decoration: getInputDecoration("Contact du marchand"),
                  validator: (value){

                  },
                ),
                SizedBox(height: 30,),
                TextFormField(
                  decoration: getInputDecoration("Type de client"),
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
                  child: Text('Souscrire', style: TextStyle(color: Colors.white))

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
