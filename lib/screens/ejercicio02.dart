import 'package:flutter/material.dart';
import 'package:prueba_flutter/navigator/drawer.dart';

class Ejercicio02 extends StatefulWidget {
  const Ejercicio02({super.key});

  @override
  _Ejercicio02State createState() => _Ejercicio02State();
}

class _Ejercicio02State extends State<Ejercicio02> {
  final TextEditingController _wController = TextEditingController();
  String _result = '';

  void _calculateDistance() {
    double w = double.tryParse(_wController.text) ?? 0.0;

    double t = 25.0;
    double theta = w * t;
    setState(() {
      _result = 'Distancia recorrida: ${theta.toStringAsFixed(2)} radianes';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 02"),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.4,  
              child: Image.network(
                "https://arbolabc.nyc3.cdn.digitaloceanspaces.com/Science/animals/articles/animales-domesticos/guinea-pig.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ingrese la velocidad angular (w) en radianes/segundo:',
                  style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 8, 8, 8)),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _wController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Velocidad angular (w) en rad/s',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 7, 7, 7)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 5, 5, 5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _calculateDistance,
                  child: Text('Calcular Distancia'),
                ),
                SizedBox(height: 20),
                if (_result.isNotEmpty)
                  Text(
                    _result,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 10, 10, 10)),
                  ),
              ],
            ),
          ),
        ],
      ),
      drawer: ElDrawer(),
    );
  }
}
