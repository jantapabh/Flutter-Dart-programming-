import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var headerSection = Image.asset('assets/image/CoC_img.jpg');

var titleSection = Padding(
    padding: EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "College of Computing",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Phuket, Thailand", style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          Icon(Icons.thumb_up, color: Colors.blue),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("99"),
          )
        ],
      ),
    ));

var buttonSection = Container(
  height: 250,
  color: Colors.blue,
);
var courseSection = Container(
  height: 250,
  color: Colors.yellow,
);

class MyApp extends StatelessWidget {
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
              courseSection,
            ],
          )),
    );
  }
}