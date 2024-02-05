import 'package:flutter/material.dart';

class Opcion2 extends StatelessWidget {
  const Opcion2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CARNE DE VACA',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/va1.png', 'CARNE SUAVE'),
                      _buildImage('assets/imag/va2.png', 'CHULETA'),
                      _buildImage('assets/imag/va3.png', 'CARNE MOLIDA'),
                      _buildImage('assets/imag/va9.png', 'GUATITA'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/va5.png', 'LOMO'),
                      _buildImage('assets/imag/va6.png', 'COSTILLA'),
                      _buildImage('assets/imag/va7.png', 'HUESO'),
                      _buildImage('assets/imag/va8.png', 'HIGADO'),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImage('assets/imag/va4.png',  'CARNE FILETEADA'),
                      _buildImage('assets/imag/va11.png', 'CARNE DE ESTOFADO'),
                      _buildImage('assets/imag/va12.png', 'PECHO'),
                      _buildImage('assets/imag/va10.png', 'PATA DE RES'),
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
