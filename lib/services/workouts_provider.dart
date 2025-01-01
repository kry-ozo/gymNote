import 'package:flutter/material.dart';
import 'package:gym_note/models/workout.dart';


class WorkoutsProvider extends ChangeNotifier{
  List<Workout> _workouts = [];

  List<Workout> get workouts => _workouts;

  void addWorkout(Workout workout){
    _workouts.add(workout);
    notifyListeners();
  }

  void deleteWorkout(Workout workout){
    
  }
}