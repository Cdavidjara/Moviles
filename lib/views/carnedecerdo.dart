import 'package:flutter/material.dart';

class Opcion3 extends StatelessWidget {
  const Opcion3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      _buildImage('assets/imag/ce1.png', 'CHULETA'),
                      _buildImage('assets/imag/ce2.png', 'CHULETA AHUMADA'),
                      _buildImage('assets/imag/ce3.png', 'CARNE MOLIDA'),
                      _buildImage('assets/imag/ce9.png', 'BRAZO'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/ce5.png', 'PATAS'),
                      _buildImage('assets/imag/ce6.png', 'FRITADA'),
                      _buildImage('assets/imag/ce7.png', 'COSTILLA'),
                      _buildImage('assets/imag/ce8.png', 'PIERNA'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/ce4.png',  'CUERO'),
                      _buildImage('assets/imag/ce12.png', 'CHICHARRON'),
                      _buildImage('assets/imag/ce10.png', 'LOMO'),
                      _buildImage('assets/imag/ce11.png', 'OREJA'),
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
          width: 1500.0,
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
