import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class AddWorkout extends StatelessWidget {
  TextEditingController nameController;
  void Function() onPressed;

  AddWorkout({super.key, required this.nameController, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height:120,),
        const Text("Add Workout", style: TextStyle(color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(controller: nameController, decoration: const InputDecoration(
            hintText: "Workout Name",
            focusColor: Colors.yellow,
            hintStyle: TextStyle(
              color: Colors.yellow
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:  Color.fromARGB(255, 255, 230, 0))
            )
          ),
          style: const TextStyle(
            color: Colors.yellow
          ),
          
          ),
        ),
        const SizedBox(height: 30,)
        ,
        TextButton(onPressed: onPressed, child: Icon(Icons.add, color: Color.fromARGB(255, 43, 43, 43),size: 28,),
        style: TextButton.styleFrom(
          backgroundColor: Colors.yellow,
          padding: EdgeInsets.symmetric(horizontal: 30)
        ),
        )
      ],
    );
  }
}