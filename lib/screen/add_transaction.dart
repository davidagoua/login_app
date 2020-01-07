import 'package:flutter/material.dart';


class AddTransaction extends StatefulWidget {
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {

  final _formKey = GlobalKey<FormState>();
  int transactionState = 01;

  InputDecoration getInputDecoration(labelText){
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      labelText: labelText,
    );
  }

  Widget getTransactionStateWidget(){
    switch(transactionState){
      case 0:
        return SizedBox();
        break;
      case 1000:
        return Card(
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: <Widget>[
                Text("Veuillez comfirmer \n la transaction sur votre mobile !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                CircularProgressIndicator(backgroundColor: Colors.white,)
              ],
            )
          ),
        );
        break;
      case 100:
        return Card(
          color: Colors.yellow,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Container(
              padding: EdgeInsets.all(5),
              child: Text("Echec de la transaction.\nVeuillez réessayer", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
          ),
        );
        break;
      case 01:
        return Card(
          color: Colors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Container(
              padding: EdgeInsets.all(5),
              child: Text("Transaction réussir.\nVeuillez remettre la marchandise !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
          ),
        );
        break;
      case 501:
        return Card(
          color: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Container(
              padding: EdgeInsets.all(5),
              child: Text("Vous crédit est insuffisant\n pour effectuer cette transaction", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
          ),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: <Widget>[
              Text("Demande de paiement", style: TextStyle(fontSize: 25)),
              SizedBox(height: 10,),
              getTransactionStateWidget(),
              SizedBox(height: 30,),
              TextFormField(
                decoration: getInputDecoration("Contact du client"),
                validator: (value){
                  if(value.isEmpty){
                    return "Veuillez précisez le numero du client";
                  }
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: getInputDecoration("Montant de la transaction"),
                validator: (value){
                  if(value.isEmpty){
                    return "Veuillez précisez le montant de la transaction";
                  }
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                maxLines: 5,
                decoration: getInputDecoration("Motif de la transaction"),
                validator: (value){
                  if(value.isEmpty){
                    return "Veuillez précisez le motif de la transaction";
                  }
                },
              ),
              SizedBox(height: 30,),
              RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  color: Colors.blue[900],
                  onPressed: (){

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  child: Text('Envoyer', style: TextStyle(color: Colors.white))

              )
            ],
          ),
        ),
      )
    );
  }
}
