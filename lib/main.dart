import 'package:flutter/material.dart';
import 'package:gym_note/components/drawer.dart';
import 'package:gym_note/pages/add_workout.dart';
import 'package:gym_note/pages/settings.dart';
import 'package:gym_note/pages/workouts.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const GymNote());
}

class GymNote extends StatefulWidget {
  const GymNote({super.key});

  @override
  State<GymNote> createState() => _GymNoteState();
}

class _GymNoteState extends State<GymNote> {
  final List<Widget> _pages = [
    Workouts(),
    AddWorkout(),
    Settings()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 43, 43, 43),
        ),
        dividerColor: Colors.yellow
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
          onTap: (int i){
            setState(() {
              index = i;
            });
          },
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 43, 43, 43) ,
          child: ListView(
            children:  [
              const MyDrawerHeader(),
              ListTile(title: const Text("Home", style: TextStyle(color: Colors.yellow, fontSize: 24),), leading: const Icon(Icons.home, color: Colors.yellow, size: 36,), onTap: ()=>{
                setState(() {
                  index = 0;
                })
              },),
              ListTile(title: Text("Settings", style: TextStyle(color: Colors.yellow, fontSize: 24),),leading: Icon(Icons.settings, color: Colors.yellow, size: 36,), onTap: ()=>{
                setState(() {
                  index = 2;
                }
              )}),
              ListTile(title: Text("Terms And Service", style: TextStyle(color: Colors.yellow, fontSize: 24),),leading: Icon(Icons.list, color: Colors.yellow, size: 36,), onTap: ()=>{}),

            ],
          ),
        ),
        body: _pages[index]
      ),
    );
  }
}
