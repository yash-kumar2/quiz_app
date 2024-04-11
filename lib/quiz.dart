



import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();

  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers=[];
  var activeScreen='start-screen';
  void switchScreen(){
    setState(() {
      activeScreen='questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length){
      setState(() {
        selectedAnswers=[];
        
        activeScreen='results-screen';
      });
    }
  }
  @override
  Widget build(context){
    Widget ScreenWidget=StartScreen(switchScreen);
    if(activeScreen=='questions-screen'){
      ScreenWidget=QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen=='results-screen'){

      ScreenWidget=ResultsScreen();
    }
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
          child:ScreenWidget,
          ),
          

      ),
    );
  }
}