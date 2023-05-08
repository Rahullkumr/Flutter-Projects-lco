import 'package:flutter/material.dart';
import 'HomePage.dart';

//TODO: Update pubspec file for image assets first
//TODO: Create new file "HomePage.dart" inside lib 
//for Stateful Widget and import it
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "minimize time",
      theme: ThemeData(
        // primarySwatch: Colors.yellow,
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}