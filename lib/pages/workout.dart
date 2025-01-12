import 'package:flutter/material.dart';
import 'package:gym_note/models/workout.dart';
import 'package:gym_note/pages/add_exercise.dart';

class WorkoutPage extends StatelessWidget {
  final Workout workout;
  const WorkoutPage({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
      appBar: AppBar(
        toolbarHeight: 75,
         iconTheme: IconThemeData(
          color: Colors.yellow, // Ustaw kolor strzałki
        ),
        backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
        centerTitle: true,
        title: Text(workout.workoutName, style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AddExercise(workoutId: workout.id,)));
          }, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: workout.exercises.length,
        itemBuilder: (context,index){
            return ListTile(title: Text("Exercise", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),);
      }),
    );
  }
}