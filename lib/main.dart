import 'package:flutter/material.dart';
import 'package:gym_note/pages/workouts.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const GymNote());
}

class GymNote extends StatelessWidget {
  const GymNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 43, 43, 43),
          )
      ),
      home: Scaffold(
        backgroundColor:const Color.fromARGB(255, 43, 43, 43) ,
        appBar: AppBar(
          title: const Text("GymNote", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 24, 24, 24),
          leading: Builder(
            builder: (context) {
              return IconButton(onPressed: (){
                Scaffold.of(context).openDrawer();
              }, icon: const Icon(Icons.menu, color: Colors.yellow, size: 35));
            }
          ),
          toolbarHeight: 75,
        ),
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.home, title: "Home"),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          backgroundColor:const Color.fromARGB(255, 24, 24, 24) ,
          activeColor: Colors.yellow,
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 43, 43, 43) ,
          child: ListView(
            children: const [
              DrawerHeader(child: Text("Settings", style: TextStyle(color: Colors.yellow),)),
              ListTile(title: Text("Item"),),
              ListTile(title: Text("Item"),),
              ListTile(title: Text("Item"),)

            ],
          ),
        ),
        body: Workouts()
      ),
    );
  }
}
