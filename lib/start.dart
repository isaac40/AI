import 'package:aitest1/main.dart';
import 'package:flutter/material.dart';

class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}

class _startState extends State<start>{
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.cyan[400],
      appBar: AppBar(

        title: Text(
          "上一頁",
              style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title,
            takeButton("開始拍照", context),
            pushButton("上傳照片", context),
            InformationButton("害蟲資料", context)
          ],
        ),
      )
    );
  }

Widget title = Container(
  padding: const EdgeInsets.all(10),
  child: Text(
    'AI植物辨識',
    style: TextStyle(fontSize: 40, color: Colors.black),
    softWrap: true,
  ),
);
  // Widget _choiceButton(BuildContext context){
  //   return Scaffold(
  //     appBar: AppBar(
  //     backgroundColor: Colors.cyan[400],
  //     title: Text(
  //         "AI植物辨識",
  //       style: TextStyle(color: Colors.white),
  //     ),
  //       centerTitle: true,
  //
  //       ),
  //     body: Center(
  //
  //     ),
  //     );
  // }
Widget takeButton(String s,BuildContext context){
  return Container(
  margin: EdgeInsets.symmetric(vertical: 20),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.red)),
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => takephoto()));
        },
        child: Text((s), style: TextStyle(fontSize: 60, color: Colors.black),),
      )
  );
}
  Widget pushButton(String s,BuildContext context){
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
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
  Widget InformationButton(String s,BuildContext context){
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
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
}