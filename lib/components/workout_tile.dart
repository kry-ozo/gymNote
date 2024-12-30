import 'package:flutter/material.dart';
import 'package:super_icons/super_icons.dart';

class WorkoutTile extends StatelessWidget {
  final String workoutTitle;
  const WorkoutTile({super.key, required this.workoutTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: const Color.fromARGB(255, 24, 24, 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(SuperIcons.bx_dumbbell, color: Colors.yellow, size: 45,),
          const SizedBox(width: 20,),
          Text(workoutTitle, style: const TextStyle(color: Colors.yellow, fontSize: 20),)
        ],
      ),
    );
  }
}