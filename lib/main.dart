import 'package:flutter/material.dart';
import 'package:prueba_flutter/navigator/drawer.dart';
import 'package:prueba_flutter/screens/ejercicio01.dart';
import 'package:prueba_flutter/screens/ejercicio02.dart'; 

void main() {
  runApp(Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
    );
  }
}
class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bienvenidos a la Prueba",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        backgroundColor: Color.fromRGBO(124, 102, 247, 1),
      ),
      drawer: ElDrawer(),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Nombre del Estudiante: Dayana Lizbeth Cueva Correa", style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(child: Text("Usuario de GitHub: @DayanaCueva03", style: TextStyle(fontSize: 25))),
          ),
          SizedBox(height: 20), 
          
          cambio_btn(context), 
          SizedBox(height: 30),
          imagenURL2(),
        ],
      ),
    );
  }
}

Widget cambio_btn(context) {
  return ElevatedButton.icon(
    onPressed: () => mostrarAlerta(context),
    label: Text("Ir al Ejercicio02"),
    icon: Icon(Icons.next_plan_outlined),
  );
}

void mostrarAlerta(context) {
  showDialog(
    context: context,
    builder: ( context) {
      return AlertDialog(
        title: Text("¿Deseas ir al Ejercicio02?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); 
            },
            child: Text("Cancelar"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); 
              navegar2(context); 
            },
            child: Text("Aceptar"),
          ),
        ],
      );
    },
  );
}

void navegar2( context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Ejercicio02()), 
  );
}

Widget imagenURL2() {
  return Center(
    child: Image.network(
      "https://i.pinimg.com/736x/28/ab/09/28ab0901b95dae04bccc146b8c16961a.jpg",
      width: 200,
    ),
  );
}
