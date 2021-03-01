import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dOne=1;
  int dTwo=2;

  changeval(){
    setState(() {
      dOne=Random().nextInt(6)+1;
      dTwo=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice Roll"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(child: FlatButton(onPressed: changeval,color: Colors.red, child: Image.asset("assets/dice$dOne.png",))),
              Expanded(child: FlatButton(onPressed: changeval, color: Colors.blue,child: Image.asset("assets/dice$dTwo.png",)))
            ],
          ),
        ),
      ),
    );
  }
}
