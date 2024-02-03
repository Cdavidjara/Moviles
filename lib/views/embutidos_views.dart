import 'package:flutter/material.dart';

class Opcion4 extends StatelessWidget {
  const Opcion4({Key? key}) : super(key: key);

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
                      _buildImage('assets/imag/em1.png', 'JAMON AHUMADO'),
                      _buildImage('assets/imag/em2.png', 'CHORIZO AMBATEÑO'),
                      _buildImage('assets/imag/em3.png', 'SALCHICHA DE POLLO'),
                      _buildImage('assets/imag/em4.png', 'SALCHICHA DE CARNE'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/em5.png', 'TOCINO AHUMADO'),
                      _buildImage('assets/imag/em6.png', 'MORCILLA'),
                      _buildImage('assets/imag/em7.png', 'CHORIZO ESPAÑOL'),
                      _buildImage('assets/imag/em8.png', 'CHORIZO PAISA'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/em9.png', 'LONGANIZA'),
                      _buildImage('assets/imag/em10.png', 'MORTADELA DE CARNE'),
                      _buildImage('assets/imag/em11.png', 'MORTADELA DE POLLO'),
                      _buildImage('assets/imag/em12.png', 'SALAMI'),
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

  Widget _buildImage(String imagePath, String name) {
    return Column(
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
        const SizedBox(height: 10.0), // Ajusta este valor según tus necesidades
      ],
    );
  }
}
