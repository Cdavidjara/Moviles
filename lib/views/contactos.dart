import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contáctenos',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Nombre: Nombre de la Empresa',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Dirección: Dirección de la Empresa',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Teléfono: Teléfono de Contacto',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Correo Electrónico: Correo Electrónico de Contacto',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Agrega aquí la lógica para el botón de contacto si lo necesitas
            },
            child: Text('Contactar'),
          ),
        ],
      ),
    );
  }
}
