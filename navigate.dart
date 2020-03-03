// navigate to the new screen
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Navigator",
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("First Page"),),
        body: Center(
          child: RaisedButton(
            child: Text("Go to Second Page"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
        ),
      );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Page"),),
        body: Center(
          child: RaisedButton(
            child: Text("Back to First Page"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      );
  }
}