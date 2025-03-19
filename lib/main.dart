import 'package:noseflutter/pages/containers.dart';
import 'package:noseflutter/pages/counter.dart';
import 'package:noseflutter/pages/home.dart';
import 'package:noseflutter/pages/buttons.dart';
import 'package:noseflutter/pages/cards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/counter': (context) => const CounterPage(),
        '/contenedores': (context) => const ContainersPage(),
        '/buttons': (context) => const ButtonsPage(),
        '/cards': (context) => const CardsPage()
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
    );
  }
}