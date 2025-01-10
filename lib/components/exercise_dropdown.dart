import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';

class ExerciseDropdown extends StatelessWidget {
  List<Exercise> exerciseList;
  ExerciseDropdown({super.key, required this.exerciseList});
  

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: exerciseList.map<DropdownMenuItem<String>>((Exercise exercise){
      return DropdownMenuItem<String>(
        value: exercise.id,
        child: Text(exercise.name),
        
        );
    }).toList(),
    onChanged: (exercise){

    });
  }
}