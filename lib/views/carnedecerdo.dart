import 'package:examen_002/controller/compra_controller.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/carnedevaca.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:examen_002/views/embutidos_views.dart';
import 'package:flutter/material.dart';

class Opcion3 extends StatelessWidget {
  const Opcion3({Key? key}) : super(key: key);

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
                navigateToFormulario4(context);
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
              'CARNE DE CERDO',
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
                        'assets/imag/ce1.png',
                        'CHULETA',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce2.png',
                        'CHULETA AHUMADA',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce3.png',
                        'CARNE MOLIDA',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce9.png',
                        'BRAZO',
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
                        'assets/imag/ce5.png',
                        'PATAS',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce6.png',
                        'FRITADA',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce7.png',
                        'COSTILLA',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce8.png',
                        'PIERNA',
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
                        'assets/imag/ce4.png',
                        'CUERO',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce12.png',
                        'CHICHARRON',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce10.png',
                        'LOMO',
                      ),
                      _buildImage(
                        context,
                        'assets/imag/ce11.png',
                        'OREJA',
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

  Widget _buildImage(BuildContext context, String imagePath, String name) {
    return GestureDetector(
      onTap: () {
        _navigateToCompra(context, name);
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
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
