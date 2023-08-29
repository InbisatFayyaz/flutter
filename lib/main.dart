//import 'dart:ffi';

//import 'package:first_project/widgets/chat_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:first_project/profile_view.dart';


void main(){
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
  return const  MaterialApp(
    debugShowCheckedModeBanner: false,
   home: MyWidget(),
 
 // home: ChatListView(),
  );
}
}


/*void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
  return const  MaterialApp(
    debugShowCheckedModeBanner: false,
   home: ProfileView(),
 // home: ChatListView(),
  );
}
}*/

//import 'package:flutter/material.dart';

/*void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}*/