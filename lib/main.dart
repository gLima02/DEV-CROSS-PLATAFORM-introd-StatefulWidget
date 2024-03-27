import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String limite = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Stateful Exemplo",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Você clicou $contador vezes"),
              Text(limite),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          
          
          onPressed: () {

            setState(() {
              contador++; 
              if(contador == 11){
                  limite = 'PARE!';
                  contador--;
              }
            });
          },  
          child: const Icon(Icons.add),
          
        ),
         
      ),
    );
  }
}
