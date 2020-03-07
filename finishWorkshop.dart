import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

//var headerSection = Image.network('https://lh3.googleusercontent.com/64YgMM45Wxs3l9fsGPNUWntF5S6U-sNkhgSTk1D0phsLEeRWJzB49U_RjZ72sCu2Hrq1Gg=s170');  //Container(height: 200, color: Colors.redAccent);

var headerSection = Container(child: Image.asset('assets/image/CoC_img.jpg'));

//Title headerSection

var titleSection = Container(

  padding: EdgeInsets.all(20),
  child: Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Expanded(child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Text('College of Computing', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text('Phuket Thailend', style: TextStyle(fontSize: 15),)
        ],),),

        Icon(Icons.thumb_up, color: Colors.blue),
        Text('99')
      ],)
  ),
);

//Button

var buttonSection = Container(
  margin: EdgeInsets.only(top: 15),
  child: Container(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround ,children:<Widget>[
      Column(children:<Widget>[
        Icon(Icons.thumb_up,size: 50,),
        Text('Like')
      ],),
      Column(children: <Widget>[
        Icon(Icons.comment,size: 50,),
        Text('Comment', style: TextStyle(fontSize: 20),),
      ],),
      Column(children: <Widget>[
        Icon(Icons.share,size: 50,),
        Text('Share'),
        ],)
    ])
  ),
);

var courseSection =  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container( margin: EdgeInsets.only(top:20),
            child: Text('Program:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Container(
              height: 100,
              child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Row(children:<Widget>[
                  Image.asset('assets/image/admission.jpg'),
                  Image.asset('assets/image/campus.jpg'),
                  Image.asset('assets/image/domitory.jpg'),
                  Image.asset('assets/image/service.jpg')
                ],)
              ])
          )
        ],);

// ฟัวก์ชั่นหลักในการทำงาน

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkShop',
      home: Scaffold(
        appBar: AppBar(title: Text('College of Computing'),),
        body: ListView(
            children: <Widget>[

              headerSection,
              titleSection,
              buttonSection,
              courseSection,

            ]
        ),
      ),
    );
  }
}