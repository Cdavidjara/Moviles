import 'package:examen_002/main.dart';
import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/views/carnedecerdo.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/carnedevaca.dart';
import 'package:examen_002/views/compra_page.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:flutter/material.dart';

void _navigateToCompra(BuildContext context, String nombreProducto,
    String descripcion, double precio, String imagePath) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Registro(
        nombreProducto: nombreProducto,
        descripcion: descripcion,
        precio: precio,
        imagePath: imagePath,
      ),
    ),
  );
}

class Opcion1 extends StatelessWidget {
  const Opcion1({Key? key}) : super(key: key);

  Widget _buildImage(BuildContext context, String imagePath, String name,
      String description, double price) {
    return GestureDetector(
      onTap: () {
        _navigateToCompra(
          context,
          name,
          description,
          price,
          imagePath, // Aquí se agrega el argumento precio
        );
      },
      child: Column(
        children: [
          SizedBox(
            width: 150.0,
            height: 110.0,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(description),
          Text('\$$price'),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  void _navigateToFormulario(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyHomePage()),
    );
  }

  void navigateToFormulario1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion1()),
    );
  }

  void navigateToFormulario2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion2()),
    );
  }

  void navigateToFormulario3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion3()),
    );
  }

  void navigateToFormulario4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion4()),
    );
  }

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
                  'Productos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                _navigateToFormulario(context); // Cambia a la función adecuada
              },
            ),
            ListTile(
              leading: Icon(Icons.kitchen),
              title: const Text('EMBUTIDOS',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario4(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: const Text('CARNE DE VACA',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario2(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bakery_dining),
              title: const Text('CARNE DE CERDO',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario3(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: const Text('CARNE DE POLLO',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario4(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'EMBUTIDOS',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        _buildImage(
                          context,
                          'assets/imag/em1.png',
                          'JAMON AHUMADO',
                          'Jamón ahumado de calidad premium',
                          15.99,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em2.png',
                          'CHORIZO AMBATEÑO',
                          'Chorizo ambateño casero y sabroso',
                          12.75,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em3.png',
                          'SALCHICHA DE POLLO',
                          'Salchicha de pollo fresca y jugosa',
                          10.50,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em4.png',
                          'SALCHICHA DE CARNE',
                          'Salchicha de carne de res, perfecta para parrilladas',
                          9.99,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      children: [
                        _buildImage(
                          context,
                          'assets/imag/em5.png',
                          'TOCINO AHUMADO',
                          'Tocino ahumado y crujiente para tus desayunos',
                          14.50,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em6.png',
                          'MORCILLA',
                          'Morcilla fresca y sabrosa para tus guisos',
                          8.25,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em7.png',
                          'CHORIZO ESPAÑOL',
                          'Chorizo español auténtico con especias mediterráneas',
                          11.99,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em8.png',
                          'CHORIZO PAISA',
                          'Chorizo paisa tradicional con un toque colombiano',
                          13.75,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      children: [
                        _buildImage(
                          context,
                          'assets/imag/em9.png',
                          'LONGANIZA',
                          'Longaniza fresca y sabrosa para tus asados',
                          10.99,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em10.png',
                          'MORTADELA DE CARNE',
                          'Mortadela de carne de res, suave y deliciosa',
                          7.50,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em11.png',
                          'MORTADELA DE POLLO',
                          'Mortadela de pollo fresca y suave, ideal para sándwiches',
                          6.99,
                        ),
                        _buildImage(
                          context,
                          'assets/imag/em12.png',
                          'SALAMI',
                          'Salami artesanal, perfecto para tablas de embutidos',
                          9.25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
