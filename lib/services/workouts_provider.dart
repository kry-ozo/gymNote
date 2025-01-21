import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';
import 'package:gym_note/models/workout.dart';
import 'package:uuid/uuid.dart';


class WorkoutsProvider extends ChangeNotifier{
  List<Workout> _workouts = [
   
  ];
  static const uuid = Uuid();

  List<Workout> get workouts => _workouts;

  void addWorkout(String name){
    Workout workout = Workout(id: uuid.v1(),workoutName: name, exercises: []);
    _workouts.add(workout);
    notifyListeners();
  }

  void deleteWorkout(String id){
    _workouts = _workouts.where((workout)=> workout.id != id).toList();
    notifyListeners();
  }

  void editWorkout(Workout newWorkout){
   Workout oldWorkout =  _workouts.firstWhere((workout)=>workout.id == newWorkout.id);
   int index = _workouts.indexOf(oldWorkout);
   _workouts[index] = newWorkout;
   notifyListeners();
  }

  Workout getWorkout(String id){
    return _workouts.firstWhere((workout)=>workout.id == id);
  }

  void addExerciseToWorkout(String workoutId, Exercise exercise){
    Workout workout = getWorkout(workoutId);
    workout.exercises.add(exercise);
    notifyListeners();
  }
}