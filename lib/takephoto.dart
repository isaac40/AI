import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

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
          title: Text("上一頁"),
        ),
        backgroundColor: Colors.cyan[400],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: _takePhoto,
                child: Text("開啟相機", style: TextStyle(fontSize: 60, color: Colors.black),),
              ),
              _buildsImage()
            ],
          ),
        ));
  }

  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _imgPath = image;
      _upLoad();
    });
  }

  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }
  _upLoad() async{
      FormData formData = FormData.fromMap({
        "file":await MultipartFile.fromFile(_imgPath.path, filename: "aa.jpg")
      });
      Response response=   await new Dio().post("http://192.168.42.244:9102/file/upload",data: formData);
      print("上傳成功===========${response.data}");
    }
    Widget _buildsImage(){
      if(_imgPath==null){
        return Text("重新選擇");
      }else{
        return Image.file(_imgPath);
      }
    }
}