import 'package:flutter/material.dart';

import 'random_color.dart';


RandomColor randomColor = RandomColor();

void main() {
  runApp(SolidTestApp());
}

class SolidTestApp extends StatefulWidget {
  @override
  _SolidTestAppState createState() => _SolidTestAppState();
}

class _SolidTestAppState extends State<SolidTestApp> {
  Color containerColor = Color(0xffbf9e5e);

  void changeColor(){
    setState(() {
      containerColor = randomColor.generationColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            changeColor();
          },
          child: Container(
            color: containerColor,
            child: Center(
              child: Text('Hey there')
            ),
          ),
        ),
      ),
    );
  }
}