import 'package:flutter/material.dart';
import 'start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/bug.png"),
              titleSection,
              RadButton("開始辨識", context)
            ],
          ),
        ),
      ),
    );
  }

Widget titleSection = Container(
  padding: const EdgeInsets.all(10),
  child: Text(
    '點擊下方按鈕進入',
    style: TextStyle(fontSize: 20, color: Colors.black),
    softWrap: true,
  ),
 );
}
Widget RadButton(String s , BuildContext context){
  return Container(
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: Colors.red)),
      onPressed: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => start()));
      },
      child: Text((s), style: TextStyle(fontSize: 60, color: Colors.black),),
      )
    );
}
