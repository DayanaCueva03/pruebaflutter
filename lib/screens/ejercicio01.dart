import 'package:flutter/material.dart';
import 'package:prueba_flutter/navigator/drawer.dart';

class Ejercicio01 extends StatelessWidget {
  const Ejercicio01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 01"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Realice el ejercicio",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura Inicial (hi) en metros",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Tiempo (t) en segundos",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
          
                calcularLanzamiento(context);
              },
              child: Text("Calcular Lanzamiento"),
            ),
          ],
        ),
      ),
      drawer: ElDrawer(),
    );
  }

  
  void calcularLanzamiento(BuildContext context) {
    double hi = 0;  
    double t = 0;   
    double a = 20.0;

   
    double h = hi + (0.5 * a * t * t);

    if (h >= 1000) {
    
      mostrarAlerta(context, "Lanzamiento Exitoso", "La altura alcanzada es: $h m. El lanzamiento fue exitoso.");
    } else {
      
      mostrarAlerta(context, "Lanzamiento Fallido", "La altura alcanzada es: $h m. El lanzamiento falló.");
    }
  }

  
  void mostrarAlerta(BuildContext context, String titulo, String contenido) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(contenido),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }
}

Widget imagenLocal(){
  return Image.asset("assets/image/software.jpg");
}
