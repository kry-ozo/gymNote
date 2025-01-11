import 'package:flutter/material.dart';
import 'package:gym_note/services/exercise_provider.dart';
import 'package:provider/provider.dart';

class ExercisePage extends StatelessWidget {
  final String id;
  const ExercisePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Consumer<ExerciseProvider>(builder: (context, provider, child){
      return Scaffold(
      backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
      appBar: AppBar(
        toolbarHeight: 75,
         iconTheme: IconThemeData(
          color: Colors.yellow, // Ustaw kolor strzałki
        ),
        backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
        centerTitle: true,
        title: Text("Exercise Name", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        
      ),
      body: Column()
    );
    });
  }
}

