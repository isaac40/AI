import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class takephoto extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _ImagePickerState();
  }
}

class _ImagePickerState extends State<takephoto> {
  var _imgPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("拍照"),
        ),
        backgroundColor: Colors.cyan[400],
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: _takePhoto,
                child: Text("拍照", style: TextStyle(fontSize: 60, color: Colors.black),),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: _openGallery,
                child: Text("相簿", style: TextStyle(fontSize: 60, color: Colors.black),),
              ),
            ],
          ),
        ));
  }

  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _imgPath = image;
    });
  }

  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }
}