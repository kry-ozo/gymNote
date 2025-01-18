import 'package:gym_note/models/log.dart';

class Exercise {
  final String id;
  final String name;
  final List<Log> logs;
  final String description;
  final String muscleType;

  Exercise({required this.id, required this.name, required this.logs, required this.description, required this.muscleType});

}