import 'package:examen_002/views/contactos.dart';
import 'package:flutter/material.dart';
import 'package:examen_002/views/formulario1.dart';
import 'package:examen_002/views/mostrar_compra.dart'; // Importa la vista MostrarDatosGuardadosView aquí
import 'package:examen_002/utils/navigation_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _screens = [
    Formulario1(),
    MostrarDatosGuardadosView(),
    ContactForm(), // Agrega MostrarDatosGuardadosView aquí
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(_selectedIndex == 0
            ? 'Inicio'
            : 'Mostrar Datos'), // Cambia el título según la pantalla seleccionada
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _screens[_selectedIndex],
      drawer: buildDrawer(context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_array_outlined),
            label:
                'Mostrar Datos', // Cambia el texto del ícono según la pantalla seleccionada
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label:
                'Contactenos', // Cambia el texto del ícono según la pantalla seleccionada
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
