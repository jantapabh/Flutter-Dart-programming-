import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

var headerSection = Container(height: 250, color: Colors.red,);
var titleSection = Container(height: 250, color: Colors.green,);
var buttonSection = Container(height: 250, color: Colors.blue,);
var courseSection = Container(height: 250, color: Colors.yellow,);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test UI workshop",
      home: Scaffold(
        appBar: AppBar(title: Text("College of Computing")),
        body: ListView(
          children: <Widget>[
            headerSection,
            titleSection,
            buttonSection,
            courseSection,s
          ],
        )
      ),
    );
  }
}