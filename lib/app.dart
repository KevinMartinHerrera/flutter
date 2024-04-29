import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/main_screen.dart';
// Importación eliminada si no se utiliza
// import 'screens/login_form_screen.dart'; 
import 'screens/signup_form_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Medicine',
      theme: _isDarkMode
          ? ThemeData.dark().copyWith(
              scaffoldBackgroundColor: const Color(0xFF1E1E1E),
              primaryColor: const Color(0xFF075505),
              appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFF075505),
                foregroundColor: Colors.white,
              ),
            )
          : ThemeData.light(),
      home: LoginScreen(
        toggleTheme: _toggleTheme,
        isDarkMode: _isDarkMode,
        onLogin: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
        onCreateAccount: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignupFormScreen()),
          );
        },
      ),
    );
  }

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }
}
