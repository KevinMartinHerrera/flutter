import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Medicine'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Aquí puedes poner lo que sucederá cuando presiones este botón
              print('Perfil');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Bienvenido a My Medicine', style: TextStyle(fontSize: 24)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
        selectedItemColor: Colors.green,
        // Puedes manejar la navegación entre diferentes vistas aquí
        onTap: (index) {
          // Manejar el tap
        },
      ),
    );
  }
}
