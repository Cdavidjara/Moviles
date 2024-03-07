import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:examen_002/firebase_options.dart';
import 'package:examen_002/views/formulario1.dart';
import 'package:examen_002/views/mostrar_compra.dart';
import 'package:examen_002/views/contactos.dart';
import 'package:examen_002/views/embutidos_views.dart';
import 'package:examen_002/views/carnedepollo.dart';
import 'package:examen_002/views/carnedecerdo.dart';
import 'package:examen_002/views/carnedevaca.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    Lista(),
    ContactForm(),
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
        title: Text(_selectedIndex == 0 ? 'Inicio' : 'Compras'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _screens[_selectedIndex],
      drawer: _buildDrawer(context),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 246, 243, 243),
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 219, 243),
              ),
              child: Text(
                'Menu de Opciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                _navigateToFormulario1(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text('Categorias'),
              onTap: () {
                _navigateToFormulario3(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Compras'),
              onTap: () {
                _navigateToFormulario2(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contactos'),
              onTap: () {
                _navigateToFormulario4(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToFormulario1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }

  void _navigateToFormulario2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Lista()),
    );
  }

  void _navigateToFormulario3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Opcion1()),
    );
  }

  void _navigateToFormulario4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactForm()),
    );
  }

  // List of BottomNavigationBarItems
  static const List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Inicio',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Compras',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.contact_phone),
      label: 'Contactenos',
    ),
  ];
}
