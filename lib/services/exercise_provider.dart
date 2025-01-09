import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';
import 'package:gym_note/placeholders/exercise_list.dart';
import 'package:uuid/uuid.dart';

class ExerciseProvider extends ChangeNotifier{
  final List<Exercise> _exercises = exercisesPlaceholderList;
  static const uuid = Uuid();
  List<Exercise> get exercises => _exercises;

  void addExercise(String name, String description, String muscleType){
    Exercise newExercise = Exercise(id: uuid.v4(), name: name, logs: [], description: description, muscleType: muscleType);
    _exercises.add(newExercise);
  }
}