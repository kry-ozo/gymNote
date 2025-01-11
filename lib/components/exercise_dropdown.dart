import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';

class ExerciseDropdown extends StatelessWidget {
  List<Exercise> exerciseList;
  String exerciseType;
  ExerciseDropdown({super.key, required this.exerciseList, required this.exerciseType});
  

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(exerciseType),
      children: exerciseList.map((exercise){
        return ListTile(
          title: Text(exercise.name),
        );
      }).toList(),
    );
  }
}