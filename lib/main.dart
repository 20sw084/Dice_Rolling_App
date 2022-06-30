import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text("Dice Rolling Application"),
        backgroundColor: Colors.teal,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int left_image = 1;
  int right_image = 1;
  @override
  Widget build(BuildContext context) {
    // var image = 4;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  left_image = Random().nextInt(6) + 1;
                });
                print("Dice 1 Rolled");
              },
              child: Image.asset('images/dice$left_image.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  right_image = Random().nextInt(6) + 1;
                });
                print("Dice 2 Rolled");
              },
              child: Image.asset('images/dice$right_image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
