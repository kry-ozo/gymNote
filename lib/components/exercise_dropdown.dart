import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';

class ExerciseDropdown extends StatelessWidget {
  List<Exercise> exerciseList;
  String exerciseType;
  ExerciseDropdown({super.key, required this.exerciseList, required this.exerciseType});
  

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(exerciseType, style: const TextStyle(
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),),
      trailing: Icon(Icons.arrow_drop_down, color: Colors.yellow,),
      children: exerciseList.map((exercise){
        return ListTile(
          title: Text(exercise.name, style: const TextStyle(
            color: Colors.yellow
          ),),
        );
      }).toList(),
    );
  }
}