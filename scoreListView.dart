//scrolling listview
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Write First Flutter App",
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override 
  RandomWordsState createState() => RandomWordsState();

}

class RandomWordsState extends State<RandomWords>{

  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = TextStyle(fontSize: 20, color: Colors.blueAccent);

  Widget _buildSuggeston(){
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i){
        if(i.isOdd){
          print("i in first if = $i\n");
          return Divider();
        }
        final int index = i ~/2;

        if(index >= _suggestions.length){
          print("i = $i\n");
          print("index = $index\n");
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(pair.asPascalCase,style: _biggerFont, ),
    );
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Name Generator"),),
      backgroundColor: Colors.grey,
      body: _buildSuggeston(),
    );
  }
}