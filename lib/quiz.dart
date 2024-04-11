

import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();

  }
}

class _QuizState extends State<Quiz>{
  final List<String> selectedAnswers=[];
  var activeScreen='start-screen';
  void switchScreen(){
    setState(() {
      activeScreen='questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }
  @override
  Widget build(context){
    return MaterialApp(
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
          child: activeScreen=='start-screen'
          ? StartScreen(switchScreen)
          :QuestionsScreen(onSelectAnswer: chooseAnswer,)),
          

      ),
    );
  }
}