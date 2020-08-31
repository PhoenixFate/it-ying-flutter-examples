import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File _image;

  // 拍照
  _takePhoto() async {
    //maxWidth 配置之后，会对照片进行剪切操作
    File image =
        await ImagePicker.pickImage(source: ImageSource.camera, maxWidth: 400);
    setState(() {
      this._image = image;
    });
    this._uploadImage(image);
  }

  //相册
  _openGallery() async {
    //maxWidth 配置之后，会对照片进行剪切操作
    var image =
        await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth: 400);
    setState(() {
      this._image = image;
    });
  }

  _uploadImage(File _image) async {
    print(_image);
    //使用dio进行图片上传
    //把数据封装到FormData
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({
      "name": "abc",
      "age": 25,
      "file": await MultipartFile.fromFile(_image.path, filename: "xxxx.jpg"),
    });
    response = await dio.post("http://jd.itying.com/imgupload", data: formData);
    //上传之后的图片路径http://jd.itying.com/public\\upload\\I62dqbCCwT6qXQpKLwpfekaC.jpg
    print(response);
  }

  //定义一个组件，显示图片
  Widget builidImage() {
    if (this._image == null) {
      return Text("请选择一张图片");
    }
    return Image.file(this._image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("camera"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _takePhoto,
              child: Text("take photo"),
            ),
            RaisedButton(
              onPressed: _openGallery,
              child: Text("open callery"),
            ),
            builidImage()
          ],
        ));
  }
}
