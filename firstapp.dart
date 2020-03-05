//Write First Flutter App
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final wordPaire = WordPair.random();
    
    return MaterialApp(

      title: "Write First Flutter App",
      home: Scaffold(

        appBar: AppBar(

          title: Text("Welcome to Flutter"),
        ),
        body: Center(
          //child: Text("Hello"),
          child: Text(wordPaire.asPascalCase),
        ),
      ),
    );
  }
}