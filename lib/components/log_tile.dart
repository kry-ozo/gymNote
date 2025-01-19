import 'package:flutter/material.dart';
import 'package:gym_note/models/log.dart';

class LogTile extends StatelessWidget {
  final Log log;
  const LogTile({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 24, 24, 24),
      padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 18),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Reps: ${log.reps}",
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 16
          ),),
          Text("Wght: ${log.weight}kg",
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 16
          ),),
          Text("1RM: ${log.oneRepMax}kg",
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 16
          ),)
        ],
      ),
    );
  }
}