import 'package:examen_002/models/compra_models.dart';
import 'package:examen_002/services/firebase_service.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  final String nombreProducto;
  final String descripcion;
  final double precio;
  final String? imagePath; // Opcional para permitir que la imagen sea nula

  const Registro({
    Key? key,
    required this.nombreProducto,
    required this.descripcion,
    required this.precio,
    this.imagePath, // Cambiado a opcional
  }) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formKey = GlobalKey<FormState>();
  late bool _onSaving = false;

  // Estado para el contador y el precio total
  int _cantidad = 1;
  double _precioTotal = 0;

  // Método para incrementar el contador
  void _incrementarCantidad() {
    setState(() {
      _cantidad++;
      _actualizarPrecioTotal();
    });
  }

  // Método para decrementar el contador
  void _decrementarCantidad() {
    setState(() {
      if (_cantidad > 1) {
        _cantidad--;
        _actualizarPrecioTotal();
      }
    });
  }

  // Método para actualizar el precio total
  void _actualizarPrecioTotal() {
    setState(() {
      _precioTotal = widget.precio * _cantidad;
    });
  }

  _saveForm() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();
    _onSaving = true;
    setState(() {});

    final Compra compra = Compra(
      nombreProd: widget.nombreProducto,
      descripcion: widget.descripcion,
      precio: _precioTotal, // Usar el precio total actualizado
    );

    final FirestoreServices service = FirestoreServices();
    service.addCompra(compra).then((value) {
      if (value) {
        Navigator.pop(_formKey.currentContext!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de nueva Compra")),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Centrar los elementos
                children: [
                  if (widget.imagePath != null)
                    Image.asset(
                      widget.imagePath!,
                      height: 200, // Aumentar el tamaño de la imagen
                      fit: BoxFit.cover,
                    ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Nombre del Producto',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight
                            .bold), // Aumentar el tamaño de la fuente y hacerla negrita
                  ),
                  Text(
                    widget.nombreProducto,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Descripción',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.descripcion,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Precio',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${widget.precio}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centrar los botones del contador
                    children: [
                      IconButton(
                        onPressed: _decrementarCantidad,
                        icon: Icon(Icons.remove),
                      ),
                      Text('$_cantidad',
                          style: TextStyle(
                              fontSize:
                                  18.0)), // Aumentar el tamaño de la fuente del contador
                      IconButton(
                        onPressed: _incrementarCantidad,
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Precio Total',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$$_precioTotal',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 20.0),
                  _onSaving
                      ? const Center(child: CircularProgressIndicator())
                      : ElevatedButton(
                          onPressed: _saveForm,
                          child: const Text("Guardar",
                              style: TextStyle(
                                  fontSize:
                                      18.0)), // Aumentar el tamaño de la fuente del botón
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
