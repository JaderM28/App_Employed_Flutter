
import 'package:app_employed/screen/config.dart';
import 'package:app_employed/screen/horarios.dart';
import 'package:app_employed/screen/inicio.dart';
import 'package:app_employed/screen/reservas.dart';
import 'package:app_employed/screen/servicios.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
        ),
        home: const InicioScreen(),
        routes: {
            '/inicio': (context) => const InicioScreen(),
            '/servicios': (context) => const ServicioScreen(),
            '/horarios': (context) => const HorarioScreen(),
            '/reservas': (context) => const ReservaScreen(),
            '/config': (context) => const ConfigScreen()
        },
    );
  }
}



