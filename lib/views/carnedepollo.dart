import 'package:examen_002/main.dart';
import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/views/carnedecerdo.dart';
import 'package:examen_002/views/carnedevaca.dart';
import 'package:examen_002/views/compra_page.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:examen_002/views/embutidos_views.dart';
import 'package:flutter/material.dart';

class Opcion4 extends StatelessWidget {
  const Opcion4({Key? key}) : super(key: key);

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
                _navigateToFormulario1(context); // Cambia a la función adecuada
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
                navigateToFormulario5(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CARNE DE POLLO',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          _buildImage(
                            context,
                            'assets/imag/po1.png',
                            'POLLO',
                            'Pollo Entero Fresco',
                            5.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po2.png',
                            'ALITAS',
                            'Alas de Pollo Frescas',
                            5.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po3.png',
                            'MUSLO',
                            'Muslos de Pollo de Corral',
                            8.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po4.png',
                            'PECHUGA',
                            'Pechuga de Pollo Fresca',
                            12.99,
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
                            'assets/imag/po5.png',
                            'MENUDENCIA',
                            'Menudencias de Pollo Frescas',
                            3.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po6.png',
                            'MOLLEJAS',
                            'Mollejas de Pollo Selectas',
                            6.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po7.png',
                            'PATITAS',
                            'Patas de Pollo Frescas',
                            7.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po8.png',
                            'PIERNAS DE PAVO',
                            'Piernas de Pavo Frescas',
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
                            'assets/imag/po12.png',
                            'HIGADO',
                            'Hígado de Pollo Fresco',
                            4.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po10.png',
                            'PECHUGA APANADA',
                            'Pechuga de Pollo Rellena',
                            11.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po11.png',
                            'PIERNAS',
                            'Piernas de Pollo Frescas',
                            8.99,
                          ),
                          _buildImage(
                            context,
                            'assets/imag/po9.png',
                            'ALAS DE PAVO',
                            'Alitas de Pavo Marinadas',
                            10.99,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  void _navigateToFormulario1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyHomePage()),
    );
  }

  void navigateToFormulario4(BuildContext context) {
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

  void navigateToFormulario5(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Opcion4()),
    );
  }
}
