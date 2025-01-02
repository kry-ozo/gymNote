import 'package:flutter/material.dart';
import 'package:gym_note/models/workout.dart';


class WorkoutsProvider extends ChangeNotifier{
  List<Workout> _workouts = [];

  List<Workout> get workouts => _workouts;

  void addWorkout(Workout workout){
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
  }
}