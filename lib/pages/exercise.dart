// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_note/services/exercise_provider.dart';
import 'package:provider/provider.dart';

class ExercisePage extends StatefulWidget {
  final String id;
  const ExercisePage({super.key, required this.id});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {

  TextEditingController weightController = TextEditingController();
  TextEditingController repsController = TextEditingController();   

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
        title: Text(provider.getExercise(widget.id).name, style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
        
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            const SizedBox(height: 30,), 
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80, 
                    child: Center(
                      child: Text(
                        "Reps:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                        ),
                        textAlign: TextAlign.right, 
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), 
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      controller: repsController,
                    ),
                  ),
                  const SizedBox(width: 10), 
                  Icon(Icons.add, color: Colors.yellow),
                  const SizedBox(width: 10),
                  Icon(Icons.remove, color: Colors.yellow),
                ],
              ),
              const SizedBox(height: 15,), 
                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80, 
                    child: Center(
                      child: Text(
                        "Weight:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      controller: weightController,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Icon(Icons.add, color: Colors.yellow),
                  const SizedBox(width: 10),
                  Icon(Icons.remove, color: Colors.yellow),
                ],
              ),
              const SizedBox(height: 30,), 
              SizedBox( 
                height: 40,
                width: double.infinity,
                  child: TextButton(onPressed: (){
                    int reps = int.parse(repsController.text);
                    double weight = double.parse(weightController.text);
                    provider.addLogToExercise(widget.id, weight, reps);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  )
                  , child: Text("COMPLETE SET", style: TextStyle(
                    color: Color.fromARGB(255, 24, 24, 24) 

                  ),
                  )
                  ),
              ),
              SizedBox(height: 30,),
              Text("Today Session", textAlign: TextAlign.center, style: TextStyle(
                color: Colors.yellow,
                fontSize: 18
              ),),
              // HERE IS GONNA BE TODAYS LOGS LIST
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: provider.getExercise(widget.id).logs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title:Text("${provider.getExercise(widget.id).logs[index].weight}"),
                  );
                },
              ),
              SizedBox(height: 30,),
              Text("Last Session", textAlign: TextAlign.center, style: TextStyle(
                color: Colors.yellow,
                fontSize: 18
              ),),
              //LOG LIST WITH LAST SESSION
              SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Text("View History", style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),))
          ],
        ),
      )
    );
    });
  }
}

