import 'package:examen_002/views/carnedecerdo.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/carnedevaca.dart';
import 'package:examen_002/views/embutidos_views.dart';
import 'package:flutter/material.dart';

void navigateToEmbutidos(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Opcion1()),
  );
}

void navigateToCarneDeVaca(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Opcion2()),
  );
}

void navigateToCarneDeCerdo(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Opcion3()),
  );
}

void navigateToCarneDePollo(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Opcion4()),
  );
}

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 33, 219, 243),
          ),
          child: const Center(
            child: Text(
              'Opciones',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text('EMBUTIDOS', style: TextStyle(color: Colors.white)),
          tileColor: Colors.black,
          onTap: () {
            Navigator.pop(context);
            navigateToEmbutidos(context);
          },
        ),
        ListTile(
          title: const Text('CARNE DE VACA',
              style: TextStyle(color: Colors.black)),
          tileColor: Colors.white,
          onTap: () {
            Navigator.pop(context);
            navigateToCarneDeVaca(context);
          },
        ),
        ListTile(
          title: const Text('CARNE DE CERDO',
              style: TextStyle(color: Colors.white)),
          tileColor: Colors.black,
          onTap: () {
            Navigator.pop(context);
            navigateToCarneDeCerdo(context);
          },
        ),
        ListTile(
          title: const Text('CARNE DE POLLO',
              style: TextStyle(color: Colors.black)),
          tileColor: Colors.white,
          onTap: () {
            Navigator.pop(context);
            navigateToCarneDePollo(context);
          },
        ),
      ],
    ),
  );
}
