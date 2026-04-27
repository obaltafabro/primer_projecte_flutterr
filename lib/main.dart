import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pantalla_comptador.dart'; // Importem el teu fitxer

void main() => runApp(const LaMevaApp());

class LaMevaApp extends StatelessWidget {
  const LaMevaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutes en Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HolaMon(), // La teva pantalla del comptador
    );
  }
}