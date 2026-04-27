import 'package:flutter/material.dart';
import 'main.dart';

class PantallaInfo extends StatelessWidget {
  const PantallaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informació')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalment
            children: [
        Text('Aquesta és una app creada per aprendre Flutters!'),


              ElevatedButton(
                onPressed: () {
                  // EL SALT:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LaMevaApp()),
                  );
                },
                child: const Text('Torna'),
              ),
      ],


        ),
    )
    );}
}