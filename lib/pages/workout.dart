import 'package:flutter/material.dart';
import 'package:gym_note/models/workout.dart';

class WorkoutPage extends StatelessWidget {
  final Workout workout;
  const WorkoutPage({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.workoutName),
      ),
      body: ListView.builder(
        itemCount: workout.exercises.length,
        itemBuilder: (context,index){
            return ListTile(title: Text("Exercise"),);
      }),
    );
  }
}