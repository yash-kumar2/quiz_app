import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 50, 7, 96),
               Color.fromARGB(255, 96, 39, 176),
            ],
            begin:Alignment.topLeft,
            end:Alignment.bottomRight,),
            

          ),
          child: StartScreen(),),
          

      ),
    ),
  );
}
