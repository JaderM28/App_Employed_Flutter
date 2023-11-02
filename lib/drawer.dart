import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Jader Montoya Montoya'),
            accountEmail: const Text('JaderMontoya283@gmail.com'),
            currentAccountPicture: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/e40b6ea6361a1abe28f32e7910f63b66/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Inicio"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/inicio');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Servicios"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/servicios');
            },
          ),
          ListTile(
            leading: const Icon(Icons.watch_later),
            title: const Text("Horarios"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/horarios');
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text("Reservas"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/reservas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Configuración"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/config');
            },
          )
        ],
      ),
    );
  }
}
