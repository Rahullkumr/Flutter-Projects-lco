import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Spanish Numbers",
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  String defaultText = "Spanish Numbers";
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];
  int engCounter = 0;
  String defaultEngText = "";
  List<String> englishNumbers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];
  void displaySNumbers() {
    setState(() {
      // whenever something is changed and required to print on screen, this setState() is called
      defaultText = spanishNumbers[counter];
      if (counter < 9)
        counter++;
      else
        counter = 0;

      defaultEngText = englishNumbers[engCounter];
      if (engCounter < 9)
        engCounter++;
      else
        engCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Numbers"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText,
                style: TextStyle(fontSize: 40.0),
              ),
              Text(
                '$defaultEngText',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: displaySNumbers,
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
      ),
    );
  }
}