import 'package:flutter/material.dart';

class JamonAhumado extends StatelessWidget {
  const JamonAhumado({Key? key}) : super(key: key);

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
                      _buildImage(context, 'assets/imag/em1.png', 'JAMON AHUMADO'),
                      // Puedes agregar más productos aquí con llamadas a _buildImage
                    ],
                  ),
                ),
                // ... (otras columnas de productos)
              ],
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context, String imagePath, String name) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _showProductDetailsDialog(context, name);
          },
          child: SizedBox(
            width: 150.0,
            height: 110.0,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10.0),
      ],
    );
  }

  void _showProductDetailsDialog(BuildContext context, String productName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Detalles del Producto'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                _buildTextField('Nombre del Producto'),
                _buildTextField('Descripción del Producto'),
                _buildTextField('Costo por Libra'),
                _buildNumericInput('Seleccionar Libras'),
                _buildTotalField(),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }

  Widget _buildNumericInput(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: labelText,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          const Text('Libras'),
        ],
      ),
    );
  }

  Widget _buildTotalField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          labelText: 'Total',
        ),
      ),
    );
  }
}
