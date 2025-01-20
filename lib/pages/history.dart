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
        title: Text("${provider.getExercise(exerciseId).name} History", style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        
      ),
      body:  ListView(
        children: provider.groupExercisesByDate(logs).entries.map((entry) {
          String date = entry.key;
          List<Log> logsForDate = entry.value;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 24, 24, 24),
                ),
                child: Center(
                  child: Text(
                    date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                       fontWeight: FontWeight.bold,
                        color: Colors.yellow
                      ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              ...logsForDate.map((log) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      Text("Reps: ${log.reps}", style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 18
                      ),),
                      Text("Wght: ${log.weight}kg", style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 18
                      ),),
                      Text("1RM: ${log.oneRepMax}kg", style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 18
                      ),)
                    ],
                  ),
                );
              }),
            ],
          );
        }).toList(),
      ),
    );
    });
  }
}