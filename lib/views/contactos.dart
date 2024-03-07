import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 32.0),
          CircleAvatar(
            radius: 75.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/imag/logo.jpg'),
          ),
          SizedBox(height: 24.0),
          Text(
            '¡Contáctanos!',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 16.0),
          ContactInfo(
            icon: Icons.location_on,
            text: 'Latacunga, Ecuador',
          ),
          ContactInfo(
            icon: Icons.phone,
            text: '0983727408',
          ),
          ContactInfo(
            icon: Icons.email,
            text: 'carnicosSA@carnicos.com',
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactInfo({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24.0,
            color: Colors.blue[900],
          ),
          SizedBox(width: 8.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
              color: Colors.blue[900],
            ),
          ),
        ],
      ),
    );
  }
}
