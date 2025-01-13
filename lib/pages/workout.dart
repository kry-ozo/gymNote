import 'package:flutter/material.dart';
import 'package:gym_note/models/workout.dart';
import 'package:gym_note/pages/add_exercise.dart';
import 'package:gym_note/pages/exercise.dart';
import 'package:gym_note/services/workouts_provider.dart';
import 'package:provider/provider.dart';

class WorkoutPage extends StatelessWidget {
  final Workout workout;
  const WorkoutPage({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
      appBar: AppBar(
        toolbarHeight: 75,
         iconTheme: const IconThemeData(
          color: Colors.yellow, 
        ),
        backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
        centerTitle: true,
        title: Text(workout.workoutName, style: const  TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AddExercise(workoutId: workout.id,)));
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: Consumer<WorkoutsProvider>(builder: (context, provider, child){
        return ListView.builder(
        itemCount: provider.getWorkout(workout.id).exercises.length,
        itemBuilder: (context,index){
            return  ListTile(
              title: Text(provider.getWorkout(workout.id).exercises[index].name,
               style: const TextStyle(
                color: Colors.yellow, fontWeight: FontWeight.w600)
                ,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ExercisePage(id: provider.getWorkout(workout.id).exercises[index].id)
                ));
              },
              );
      });
      })
    );
  }
}

