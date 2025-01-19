import 'package:flutter/material.dart';
import 'package:gym_note/models/log.dart';

class LogTile extends StatelessWidget {
  final Log log;
  const LogTile({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Reps: ${log.reps}"),
        Text("Weight: ${log.weight}kg"),
        Text("1RM: ${log.oneRepMax}kg")
      ],
    );
  }
}