import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: const Center(child: Text("GymNotes", style: TextStyle(color: Colors.yellow, fontSize: 40),)),
      decoration: BoxDecoration(
        border: Border(bottom: Divider.createBorderSide(context, color: Colors.yellow)
      ),
    ));
  }
}