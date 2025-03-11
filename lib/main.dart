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
  var numeroclick = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
      
          setState(() {
             numeroclick++;
          });
        }, child: const Icon(Icons.add),),
        appBar: AppBar(
          title:  const Text('Hola pvta'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),

        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$numeroclick", style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w100
              ),),
              Text('Numero de clicks', style: 
              TextStyle(
                fontSize: 20,

              ),),
            ],
          
          ),
        ),
      ),
    );
  }
}
