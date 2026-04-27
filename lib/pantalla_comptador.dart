import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pantalla_info.dart';

class HolaMon extends StatefulWidget {
  const HolaMon({super.key});

  @override
  State<HolaMon> createState() => _HolaMonState();
}

class _HolaMonState extends State<HolaMon> {
  int _comptador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50], // Canvia el fons
        appBar: AppBar(
          title: const Text('La meva primera App 7'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalment
            children: [
              const Text('Has premut el botó aquestes vegades:'),
              const SizedBox(height: 20), // <--- Això afegeix 20 píxels de separació
              Text(
                'Aquestes: $_comptador',
                style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
// Creem una FILA per als botons
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centra els botons horitzontalment
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _comptador++; // Sumar
                      });
                    },
                    child: const Text('Sumar'),
                  ),
                  const SizedBox(width: 20), // Espai entre botons
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _comptador--; // Restar
                      });
                    },
                    child: const Text('Restar'),
                  ),
                  const SizedBox(width: 20), // Espai entre botons
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _comptador = 0; // Reiniciar
                      });
                    },
                    child: const Text('Reiniciar'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // EL SALT:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PantallaInfo()),
                  );
                },
                child: const Text('Veure informació'),
              ),
            ],

          ),
        ),
        // AFEGEIX AIXÒ AQUÍ:
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            // Aquesta línia tanca l'aplicació de forma oficial
            SystemNavigator.pop();
          },
          child: const Icon(Icons.exit_to_app), // Canviem l'icona per una de "sortir"
        ),
      );
  }
}