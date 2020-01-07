import 'package:flutter/material.dart';

class ListTransaction extends StatefulWidget {
  @override
  _ListTransactionState createState() => _ListTransactionState();
}

class _ListTransactionState extends State<ListTransaction> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[

                  Card(
                    color: Colors.red,
                    elevation: 7,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Text("2", style: TextStyle(fontSize: 30, color: Colors.white),),
                          Text("Transaction(s) échouée(s)", style: TextStyle(fontSize: 15, color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    elevation: 7,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Text("12,000 "+" FCFA", style: TextStyle(fontSize: 30, color: Colors.white),),
                          Text("Solde", style: TextStyle(fontSize: 15, color: Colors.white),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            FutureBuilder()
          ],
        ),
      ),
    );
  }
}

var card_sample = Card(
  color: Colors.green,
  elevation: 7,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
  child: Padding(
    padding: EdgeInsets.all(5),
    child: Wrap(
      direction: Axis.vertical,
      children: <Widget>[
        Text("4", style: TextStyle(fontSize: 30, color: Colors.white),),
        Text("Transaction(s) réussie(s)", style: TextStyle(fontSize: 15, color: Colors.white),),
      ],
    ),
  ),
);

var listTile_sample = ListTile(
  leading: Icon(Icons.cancel, color: Colors.red[300],),
  title: Text("6,000 FCFA"+"  "+"+2256754398"),
  subtitle: Text('12/02/2019 18:59/15', style: TextStyle(fontSize: 10, color: Colors.grey)),
  trailing: Icon(Icons.arrow_downward, color: Colors.red,),
);
