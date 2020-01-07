import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screen/add_marchand.dart';
import 'package:login_app/screen/souscription.dart';
import 'package:login_app/widgets/ui.dart';


class CommercialHome extends StatefulWidget {

  User user;

  CommercialHome({Key key, User this.user}):super(key: key);

  @override
  _CommercialHomeState createState() => _CommercialHomeState();
}

class _CommercialHomeState extends State<CommercialHome> {

  List<Widget> commercial_widget = [
    AddMarchand(),
    SouscriptionScreen()
  ];
  int bottomBarindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: commercial_widget[bottomBarindex],
      drawer: getDrawer(context ,user: this.widget.user),
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
          BottomNavigationBarItem(icon: Icon(Icons.edit), title: Text("Inscription")),
          BottomNavigationBarItem(icon: Icon(Icons.vertical_align_bottom), title: Text("Souscription")),
        ]
      ),
      resizeToAvoidBottomPadding: true,
    );
  }
}

Future onAddBtnpressed(context){
  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Nouvelle inscription")));
}