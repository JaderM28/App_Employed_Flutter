import 'package:app_employed/Page/contactoPage.dart';
import 'package:app_employed/Page/galeriaPage.dart';
import 'package:app_employed/Page/inicioPage.dart';
import 'package:app_employed/Page/nosotrosPage.dart';
import 'package:app_employed/drawer.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
   int indexPage = 0;

  List<Widget> pages = [
    const InicioPage(),
    const NosotrosPage(),
    const ContactoPage(),
    const GaleriaPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Home Aplication"),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      backgroundColor: const Color.fromARGB(255, 211, 210, 210),
      body: pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.amber,
        selectedItemColor: const Color.fromARGB(255, 11, 22, 33),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Nosotros'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Galeria'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Contacto'),
        ],
        backgroundColor: Colors.blue,
        currentIndex: indexPage,
        onTap: (int index) {
          setState(() {
            indexPage = index;
          });
        },
      ),
    );
  }
}
