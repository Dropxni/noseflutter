import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}


class _CounterPageState extends State<CounterPage> {
    var numeroClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){
                setState(() {
                      numeroClicks++;
                });
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: (){
                setState(() {
                  if(numeroClicks > 0) {
                    numeroClicks--;
                  }
                });
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.remove),
              ),
                            const SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: (){
                setState(() {
                      numeroClicks = 0;
                });
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.replay_outlined),
              ),
              
          ],
        ),
        appBar: AppBar(
          title: const Text('Hola Pvta')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              Text("$numeroClicks",style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,  
              ),), 
              const Text('Numero de clicks',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,  
              ),),
            ]
          ),
        ),
      );
  }
}