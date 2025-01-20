import 'package:flutter/material.dart';
import 'package:gym_note/models/log.dart';
import 'package:gym_note/services/exercise_provider.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatelessWidget {
  final String exerciseId;
  final List<Log> logs;
  const HistoryPage({super.key, required this.exerciseId, required this.logs});

  @override
  Widget build(BuildContext context) {
    return Consumer<ExerciseProvider>(builder: (context, provider, child){
      return Scaffold(
        backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
      appBar: AppBar(
        toolbarHeight: 75,
         iconTheme: const IconThemeData(
          color: Colors.yellow, 
        ),
        backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
        centerTitle: true,
        title: Text("${provider.getExercise(exerciseId).name} history", style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        
      ),
      body:  ListView(
        children: provider.groupExercisesByDate(logs).entries.map((entry) {
          String date = entry.key;
          List<Log> logsForDate = entry.value;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  date,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ...logsForDate.map((log) {
                return ListTile(
                  title: Text('Exercise ID: ${log.exerciseId}'),
                  subtitle: Text('Reps: ${log.reps}, Weight: ${log.weight} kg'),
                );
              }).toList(),
            ],
          );
        }).toList(),
      ),
    );
    });
  }
}