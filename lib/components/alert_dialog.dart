import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';
import 'package:gym_note/services/exercise_provider.dart';
import 'package:gym_note/services/workouts_provider.dart';
import 'package:provider/provider.dart';

Future<bool?> addExerciseToWorkoutDialog(BuildContext context, String exerciseId, String workoutId) async{
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: const Text("Add Exercise?"),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text("Do you want to add this exercise to your current workout?")
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: const Text("Cancel")),
          TextButton(onPressed: (){
            Exercise exercise = Provider.of<ExerciseProvider>(context, listen: false).getExercise(exerciseId);
            Provider.of<WorkoutsProvider>(context, listen: false).addExerciseToWorkout(workoutId, exercise);
          }, child: const Text("Add"))
        ],
      );
  });
}