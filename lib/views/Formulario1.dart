import 'package:flutter/material.dart';

class Formulario1 extends StatelessWidget {
  const Formulario1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIAS'),
      ),
      drawer: Drawer(
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
              },
            ),
            ListTile(
              title: const Text('CARNES DE VACA', style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('CARNE DE CERDO', style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('CARNE DE POLLO', style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 50.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                width: 300.0,
                height: 250.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Color del contorno
                    width: 6.0, // Ancho del contorno
                  ),
                ),
                child: const ClipOval(
                  child: Image(
                    image: AssetImage('assets/imag/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'BIENVENIDOS',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'CARNICOS, SA',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
