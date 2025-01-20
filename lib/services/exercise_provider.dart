import 'package:flutter/material.dart';
import 'package:gym_note/models/exercise.dart';
import 'package:gym_note/models/log.dart';
import 'package:gym_note/placeholders/exercise_list.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';

class ExerciseProvider extends ChangeNotifier{
  final List<Exercise> _exercises = exercisesPlaceholderList;
  final List<String> _types = ["abs", "back", "biceps", "calves", "cardio", "chest", "forearms", "glutes", "legs", "shoulders", "triceps", "other"];
  static const uuid = Uuid();

  List<Exercise> get exercises => _exercises;
  List<String> get types => _types;

  void addExercise(String name, String description, String muscleType){
    Exercise newExercise = Exercise(id: uuid.v4(), name: name, logs: [], description: description, muscleType: muscleType);
    _exercises.add(newExercise);
    notifyListeners();
  }
  Exercise getExercise(String id){
    return _exercises.firstWhere((exercise)=>exercise.id == id);

  }

  List<Exercise> getExercisesByType(String type){
    List<Exercise> filteredExercises = _exercises.where((exercise)=>exercise.muscleType == type).toList();
    return filteredExercises;
  }
  
  void addLogToExercise(String exerciseId, double weight, int reps){
    Exercise exercise = getExercise(exerciseId);
    DateFormat format = DateFormat("yyyy-MM-dd");
    String currentDate = format.format(DateTime.now());
    int oneRepMax = (weight * (36/(37-reps))).round();
    Log newLog = Log(exerciseId: exercise.id, dateLog: currentDate, reps: reps, weight: weight, oneRepMax: oneRepMax);
    exercise.logs.add(newLog);
    notifyListeners();
  } 

  List<Log> getLogsFromDate(List<Log> logs, String date){
    List<Log> filteredLogs = logs.where((log)=>log.dateLog.compareTo(date) == 0).toList();
    return filteredLogs;
  }

  Map<String, List<Log>> groupExercisesByDate(List<Log> logs){
    return groupBy(logs, (Log log) => log.dateLog);
  }
}