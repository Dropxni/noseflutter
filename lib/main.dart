import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int numeroclick = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hola pvta'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$numeroclick",
                style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const Text(
                'Número de clicks',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Botón para sumar
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    numeroclick++;
                  });
                },
                tooltip: 'Sumar',
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10),
              // Botón para restar
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    numeroclick--;
                  });
                },
                tooltip: 'Restar',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 10),
              // Botón para reiniciar
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    numeroclick = 0;
                  });
                },
                tooltip: 'Reiniciar',
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
