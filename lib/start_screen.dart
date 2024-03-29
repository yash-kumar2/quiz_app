import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen ({super.key});

@override
Widget build (context) {
return   Center(child:  Column(
  mainAxisSize: MainAxisSize.min,
  children: [
  Image.asset('assets/images/quiz-logo.png',
  width: 300,
  color: const Color.fromARGB(126, 255, 255, 255),),
  const SizedBox(height: 80,),
  const Text('Learn flutter the fun way',
  style: TextStyle(
    color: Color.fromARGB(255, 220, 208, 243),
    fontSize: 20,
  ),),
  const SizedBox(height: 30,),
  OutlinedButton.icon(onPressed: (){}, 

  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.white,
  ),
  icon: const Icon(Icons.arrow_right_alt),
  
  label: const Text("Start Quiz"))

],));
}

}