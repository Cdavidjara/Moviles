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
            Text(
              'EMBUTIDOS',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _buildImageWithDetails(
                        'assets/imag/em1.png',
                        'JAMON',
                        '\$00.50',
                      ),
                      SizedBox(height: 10.0),
                      _buildImageWithDetails(
                        'assets/imag/em 2.png',
                        'CHORIZO',
                        '\$00.90',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      _buildImageWithDetails(
                        'assets/imag/em 3.png',
                        'SALCHICHA DE POLLO',
                        '\$00.80',
                      ),
                      SizedBox(height: 10.0),
                      _buildImageWithDetails(
                        'assets/imag/em4.png',
                        'sALCHICHA DE CARNE',
                        '\$01.00',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para realizar la acción de comprar
              },
              child: Text('Comprar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithDetails(String imagePath, String name, String price) {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 5.0),
        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(price),
      ],
    );
  }
}
