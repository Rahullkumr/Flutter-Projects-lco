import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //declarartions

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage d1firstImage, d2firstImage;

  //display
  @override
  void initState() {
    super.initState();
    setState(() {
      d1firstImage = six;
      d2firstImage = six;
    });
  }

  void rollDice() {
    AssetImage d1nextImage, d2nextImage;

    //dice 1
    int d1random = (1 + Random().nextInt(6));
    switch (d1random) {
      case 1:
        d1nextImage = one;
        break;
      case 2:
        d1nextImage = two;
        break;
      case 3:
        d1nextImage = three;
        break;
      case 4:
        d1nextImage = four;
        break;
      case 5:
        d1nextImage = five;
        break;
      case 6:
        d1nextImage = six;
        break;
    }
    // dice 2
    int d2random = (1 + Random().nextInt(6));
    switch (d2random) {
      case 1:
        d2nextImage = one;
        break;
      case 2:
        d2nextImage = two;
        break;
      case 3:
        d2nextImage = three;
        break;
      case 4:
        d2nextImage = four;
        break;
      case 5:
        d2nextImage = five;
        break;
      case 6:
        d2nextImage = six;
        break;
    }
    setState(() {
      d1firstImage = d1nextImage;
      d2firstImage = d2nextImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: d1firstImage,
                    height: 150,
                    width: 150,
                  ),
                  Image(
                    image: d2firstImage,
                    height: 150,
                    width: 150,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 150.0),
                child: ElevatedButton(
                  onPressed: rollDice,
                  child: const Text(
                    "Roll the dice!",
                    style: TextStyle(
                      fontSize: 30,
                      
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB( 20, 5, 20, 5),
                    elevation: 20.0,
                    shadowColor: Color(0xff000025),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
