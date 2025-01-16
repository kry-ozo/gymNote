import 'package:flutter/material.dart';
import 'package:gym_note/pages/exercise.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseName;
  final String exerciseId;
  const ExerciseTile({super.key, required this.exerciseName, required this.exerciseId});
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
              tileColor: const Color.fromARGB(255, 24, 24, 24),
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                title: Text(exerciseName,
                 style: const TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ExercisePage(id: exerciseId)
                  ));
                },
                ),
    );
  }
}