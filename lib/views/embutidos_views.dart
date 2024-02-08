import 'package:examen_002/controller/compra_controller.dart';
import 'package:examen_002/views/carnedecerdo.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/carnedevaca.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:flutter/material.dart';

class Opcion1 extends StatelessWidget {
  const Opcion1({Key? key}) : super(key: key);

  void _navigateToCompra(BuildContext context, String nombreProducto) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CompraView(
          nombreProducto: nombreProducto,
          compraController: CompraController(),
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context, String imagePath, String nombre) {
    return GestureDetector(
      onTap: () {
        _navigateToCompra(context, nombre);
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
          Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
        ],
      ),
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
              title: const Text('EMBUTIDOS',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario1(context);
              },
            ),
            ListTile(
              title: const Text('CARNE DE VACA',
                  style: TextStyle(color: Colors.black)),
              tileColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario2(context);
              },
            ),
            ListTile(
              title: const Text('CARNE DE CERDO',
                  style: TextStyle(color: Colors.white)),
              tileColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
                navigateToFormulario3(context);
              },
            ),
            ListTile(
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
      body: Padding(
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
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em2.png',
                        'CHORIZO AMBATEÑO',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em3.png',
                        'SALCHICHA DE POLLO',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em4.png',
                        'SALCHICHA DE CARNE',
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
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em6.png',
                        'MORCILLA',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em7.png',
                        'CHORIZO ESPAÑOL',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em8.png',
                        'CHORIZO PAISA',
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
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em10.png',
                        'MORTADELA DE CARNE',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em11.png',
                        'MORTADELA DE POLLO',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/em12.png',
                        'SALAMI',
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
    );
  }
}
