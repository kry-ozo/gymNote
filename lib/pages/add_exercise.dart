import 'package:flutter/material.dart';
import 'package:gym_note/components/exercise_dropdown.dart';
import 'package:gym_note/services/exercise_provider.dart';
import 'package:provider/provider.dart';

class AddExercise extends StatelessWidget {
  const AddExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
      appBar: AppBar(
        toolbarHeight: 75,
         iconTheme: const IconThemeData(
          color: Colors.yellow,
        ),
        backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
        centerTitle: true,
        title: const Text("Add Exercise", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
      ),
      body:  Consumer<ExerciseProvider>(builder: (context, provider, child){
        return ListView.builder(
          itemCount: provider.types.length,
          itemBuilder: (context, index){
            return ExerciseDropdown(exerciseList: provider.getExercisesByType(provider.types[index]), exerciseType:provider.types[index] ,);
          }
        );
      })
    );
  }
}