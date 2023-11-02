
import 'package:app_employed/drawer.dart';
import 'package:flutter/material.dart';

class HorarioScreen extends StatelessWidget {
  const HorarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 146, 202, 194),
        title: const Text("Horario Disponible"),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(), 
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola, Bienvenido a los Horarios"),
          ],
        ),
      ),
    );
  }
}