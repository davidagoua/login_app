import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';

import '../main.dart';


Widget getDrawer(BuildContext context, {User user}){
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.blue[900]
          ),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue[900]
            ),
            accountName: Text(user.nom.toUpperCase(), style: TextStyle(fontSize: 20),),
            accountEmail: Text(user?.type == 1 ? 'Commercial' : 'Marchand', style: TextStyle(fontSize: 15),),
          ),
        ),
        ListTile(
          title: Text("Modifier mon profile", style: TextStyle(fontSize: 20)),
          leading: Icon(Icons.edit),
        ),
        ListTile(
          title: Text("Se déconnecter", style: TextStyle(fontSize: 20)),
          leading: Icon(Icons.exit_to_app),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
              return StartPage();
            }));
          },
        ),

      ],
    ),
  );
}