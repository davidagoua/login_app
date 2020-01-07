import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/widgets/ui.dart';

import 'add_transaction.dart';
import 'list_transaction.dart';


class MarchandHome extends StatefulWidget {

  User user;

  MarchandHome({Key key, User this.user}):super(key: key);

  @override
  _MarchandHomeState createState() => _MarchandHomeState();
}

class _MarchandHomeState extends State<MarchandHome> {

  List<Widget> marchand_widget = [
    ListTransaction(),
    AddTransaction()
  ];
  int bottomBarindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: marchand_widget[bottomBarindex],
      drawer: getDrawer(context, user: this.widget.user),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("VitePaye"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomBarindex,
          iconSize: 20,
          onTap: (int index){
            setState(() {
              bottomBarindex = index;
            });
          },
          selectedItemColor: Colors.blue[900],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.playlist_add_check), title: Text("Transactions")),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on), title: Text("Nouvelle transaction")),
          ]
      ),
      resizeToAvoidBottomPadding: true,
    );
  }
}

Future onAddBtnpressed(context){
  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Nouvelle inscription")));
}