
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
          children: <Widget>[
             DrawerHeader(child: Stack(
               children: <Widget>[
                 Image.asset(
                     'assets/images/bird.png'
                   )])),
                 ListTile(
                   leading: const Icon(Icons.settings),
                   title: const Text('Setting'),
                   onTap: (){
                     Navigator.pushNamed(context, '/setting');
                   },

                 )
               ],
             ));
  }




}