import 'package:flutter/material.dart';
import 'package:gym_note/components/workout_tile.dart';

class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WorkoutTile(workoutTitle: "Workout 1",),
        WorkoutTile(workoutTitle: "Workout 1",),
        WorkoutTile(workoutTitle: "Workout 1",)
      ],
    );
  }
}