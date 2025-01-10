import 'package:gym_note/models/exercise.dart';

class Workout {
  final String id;
  final String workoutName;
  final List<Exercise> exercises;

  Workout({required this.id,required this.workoutName, required this.exercises});
}