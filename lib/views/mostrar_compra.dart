import 'package:examen_002/controller/compra_controller.dart';
import 'package:flutter/material.dart';

class MostrarDatosGuardadosView extends StatelessWidget {
  final CompraController _compraController = CompraController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Guardados'),
      ),
      body: FutureBuilder<Compra?>(
        future: _compraController.readCompra(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final compra = snapshot.data!;
            return SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cédula: ${compra.cedula}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Nombre: ${compra.nombre}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Dirección: ${compra.direccion}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Producto: ${compra.nombreProd}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Descripción: ${compra.descripcion}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Precio: ${compra.presio}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('No hay datos guardados.'));
          }
        },
      ),
    );
  }
}
