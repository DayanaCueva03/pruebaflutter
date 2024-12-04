import 'package:flutter/material.dart';
import 'package:prueba_flutter/main.dart';
import 'package:prueba_flutter/screens/ejercicio01.dart';
import 'package:prueba_flutter/screens/ejercicio02.dart';

class ElDrawer extends StatelessWidget {
  const ElDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title:Text("Prueba") ,
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Prueba())),

          ),
          ListTile(
            title: Text("Ejercicio 01"),
            onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>Ejercicio01())),
          ),
          ListTile(
            title: Text("Ejercicio 02"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Ejercicio02())),
          )
        ],
      ),
    );
  }
}
