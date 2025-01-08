import 'package:flutter/material.dart';
import 'package:gym_note/components/workout_tile.dart';
import 'package:gym_note/pages/workout.dart';
import 'package:gym_note/services/workouts_provider.dart';
import 'package:provider/provider.dart';

class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutsProvider>(builder: (context,workout, child){
      return ListView.builder(
        itemCount: workout.workouts.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> WorkoutPage(workout: workout.workouts[index])));
            },
            child: WorkoutTile(workoutTitle: workout.workouts[index].workoutName,
            ));
        }
      );
        
    
    });
  }
}