

import 'package:app_employed/drawer.dart';
import 'package:flutter/material.dart';

class ServicioScreen extends StatelessWidget {
const ServicioScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    DateTime now = DateTime.now();
    String fechaActual = "${now.year}-${now.month}-${now.day}";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 146, 202, 194),
        title: const Text("Servicios Asociados"),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Center(child: Text('$fechaActual', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)),
          ),
          const SizedBox(height: 10,),
          const Card(
            child: ListTile(
              leading: Icon(Icons.content_cut),
              title: Text('Corte de Pelo'),
              subtitle: Text('Cambia tu estilo con un corte de cabello profesional.'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9VdIYdrl1yXMxO2os_I-9R6ZUE9IUY1nhQSYAh4IfigqmrF8FRL5MVYdip9Y8zJxJtAs&usqp=CAU',
                height: 100,
                width: 50,
              ),
              title: const Text('Peinado'),
              subtitle: const Text('Estiliza tu cabello para lucir increible en cualquier ocasion.'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.health_and_safety),
              title: Text('Coloracion de Cabello'),
              subtitle: Text('Dale color y vida a tu cabello con tintas y mechas espectaculares.'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.apple_outlined),
              title: Text('Manicura y Pedicura'),
              subtitle: Text('Cuida tus uñas con esmalte y decoraciones encantadoras.'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.apple_outlined),
              title: Text('Maquillaje'),
              subtitle: Text('Realza tu belleza con maquillaje para eventos especiales.'),
            ),
          ),
        ],
      ),
    );
  }
}