import 'package:flutter/material.dart';
import 'package:netflix/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Inter',
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold
          ),
        ),
          scaffoldBackgroundColor: Colors.black38,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage()
      );   // Tela que vai iniciar tudo
  }
}
