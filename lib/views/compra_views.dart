import 'package:examen_002/controller/compra_controller.dart';
import 'package:flutter/material.dart';

class CompraView extends StatefulWidget {
  const CompraView(
      {Key? key, required String nombreProducto, required compraController})
      : super(key: key);

  @override
  _CompraViewState createState() => _CompraViewState();
}

class _CompraViewState extends State<CompraView> {
  final CompraController _compraController = CompraController();

  TextEditingController _cedulaController = TextEditingController();
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _direccionController = TextEditingController();
  TextEditingController _nombreProdController = TextEditingController();
  TextEditingController _descripcionController = TextEditingController();
  TextEditingController _presioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compra'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _cedulaController,
              decoration: const InputDecoration(labelText: 'Cedula'),
            ),
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _direccionController,
              decoration: const InputDecoration(labelText: 'Direccion'),
            ),
            TextField(
              controller: _nombreProdController,
              decoration:
                  const InputDecoration(labelText: 'Nombre del Producto'),
            ),
            TextField(
              controller: _descripcionController,
              decoration: const InputDecoration(labelText: 'Descripcion'),
            ),
            TextField(
              controller: _presioController,
              decoration: const InputDecoration(labelText: 'Precio'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _guardarCompra();
              },
              child: const Text('Guardar Compra'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _mostrarCompraGuardada();
              },
              child: const Text('Mostrar Compra Guardada'),
            ),
          ],
        ),
      ),
    );
  }

  void _guardarCompra() {
    final nuevaCompra = Compra(
      cedula: _cedulaController.text,
      nombre: _nombreController.text,
      direccion: _direccionController.text,
      nombreProd: _nombreProdController.text,
      descripcion: _descripcionController.text,
      presio: double.tryParse(_presioController.text) ?? 0.0,
    );

    _compraController.writeCompra(nuevaCompra);
    _limpiarCampos();
  }

  void _mostrarCompraGuardada() async {
    final compraGuardada = await _compraController.readCompra();

    if (compraGuardada != null) {
      // Puedes mostrar la compra guardada en un diálogo, imprimir en consola, etc.
      print('Compra Guardada: ${compraToJson(compraGuardada)}');
    } else {
      // Manejar el caso cuando no hay una compra guardada
      print('No hay compra guardada');
    }
  }

  void _limpiarCampos() {
    _cedulaController.clear();
    _nombreController.clear();
    _direccionController.clear();
    _nombreProdController.clear();
    _descripcionController.clear();
    _presioController.clear();
  }
}
