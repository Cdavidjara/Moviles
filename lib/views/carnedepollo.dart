import 'package:flutter/material.dart';

class Opcion5 extends StatelessWidget {
  const Opcion5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/po1.png', 'POLLO'),
                      _buildImage('assets/imag/po2.png', 'ALITAS'),
                      _buildImage('assets/imag/po3.png', 'MUSLO'),
                      _buildImage('assets/imag/po4.png', 'PECHUGA'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/po5.png', 'MENUDENCIA'),
                      _buildImage('assets/imag/po6.png', 'MOLLEJAS'),
                      _buildImage('assets/imag/po7.png', 'PATITAS'),
                      _buildImage('assets/imag/po8.png', 'PIERNAS DE PAVO'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/po12.png', 'HIGADO'),
                      _buildImage('assets/imag/po10.png', 'PECHUGA APANADA'),
                      _buildImage('assets/imag/po11.png', 'PIERNAS'),
                      _buildImage('assets/imag/po9.png',  'ALAS DE PAVO'),
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
