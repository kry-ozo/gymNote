import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text("Help & Support", style: TextStyle(
            color: Colors.yellow,
            fontSize: 26
          ),),
          SizedBox(height: 5,),
          Text("Rate this app",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 16
          ),),
          SizedBox(height: 20,),
          Text("Data", style: TextStyle(
            color: Colors.yellow,
            fontSize: 26
          ),),
          SizedBox(height: 10,),
          Text("Backup",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 16
          ),),
          SizedBox(height: 5,),
          Text("Restore",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 16
          ),),
          
        ],
      ),
    );
  }
}