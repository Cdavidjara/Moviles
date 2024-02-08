import 'package:examen_002/controller/compra_controller.dart';
import 'package:examen_002/views/compra_views.dart';
import 'package:flutter/material.dart';

class Opcion4 extends StatelessWidget {
  const Opcion4({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
