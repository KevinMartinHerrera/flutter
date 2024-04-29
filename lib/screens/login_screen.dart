import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  final VoidCallback onLogin;
  final VoidCallback onCreateAccount;

  const LoginScreen({
    Key? key, // Añadí el parámetro key y lo corregí
    required this.toggleTheme,
    required this.isDarkMode,
    required this.onLogin,
    required this.onCreateAccount,
  }) : super(key: key); // Añadí super(key: key)

  @override
  Widget build(BuildContext context) {
    // Use const for constant values
    const customGreen = Color(0xFF075505); // Updated based on suggestion

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a My Medicine'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
            onPressed: toggleTheme,
            tooltip: 'Cambiar tema',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Gestiona tu salud con nosotros',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: customGreen, // Correct parameter
                foregroundColor: Colors.white, // Correct parameter
              ),
              child: const Text('Iniciar sesión'), // Moved child to the end based on suggestion
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onCreateAccount,
              style: ElevatedButton.styleFrom(
                backgroundColor: customGreen, // Correct parameter
                foregroundColor: Colors.white, // Correct parameter
              ),
              child: const Text('Crear cuenta'), // Moved child to the end based on suggestion
            ),
          ],
        ),
      ),
    );
  }
}
