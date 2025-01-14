// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gym_note/services/exercise_provider.dart';
import 'package:provider/provider.dart';

class ExercisePage extends StatelessWidget {
  final String id;
  const ExercisePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Consumer<ExerciseProvider>(builder: (context, provider, child){
      return Scaffold(
      backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
      appBar: AppBar(
        toolbarHeight: 75,
         iconTheme: const IconThemeData(
          color: Colors.yellow, // Ustaw kolor strzałki
        ),
        backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
        centerTitle: true,
        title: Text(provider.getExercise(id).name, style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            Row(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  child: Center(child: Text("Reps:", style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow
                  ),)),
                ),
                
                  SizedBox(
                    width: 100,
                    height: 80,
                    child: Center(child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          gapPadding: 2
                        ),
                        
                      ),
                    )),
                  ),
                
                SizedBox(
                  height: 80,
                  child: Icon(Icons.add, color: Colors.yellow,),
                ),
                SizedBox(
                  height: 80,
                  child: Icon(Icons.remove, color: Colors.yellow,)
                )
              ],
            ),
            Row(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  child: Center(child: Text("Weight:", style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow
                  ),)),
                ),
                
                  SizedBox(
                    width: 100,
                    height: 80,
                    child: Center(child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          gapPadding: 2
                        ),
                        
                      ),
                    )),
                  ),
                
                SizedBox(
                  height: 80,
                  child: Icon(Icons.add, color: Colors.yellow,),
                ),
                SizedBox(
                  height: 80,
                  child: Icon(Icons.remove, color: Colors.yellow,)
                ),
                
              ],
            ),
            
              SizedBox( 
                height: 40,
                width: double.infinity,
                  child: TextButton(onPressed: (){
              
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  )
                  , child: Text("COMPLETE SET", style: TextStyle(
                    color: Color.fromARGB(255, 24, 24, 24) 

                  ),)),
              ),
            
          ],
        ),
      )
    );
    });
  }
}

