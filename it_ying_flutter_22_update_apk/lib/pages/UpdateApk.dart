import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class UpdateApk extends StatefulWidget {
  @override
  _UpdateApkState createState() => _UpdateApkState();
}

class _UpdateApkState extends State<UpdateApk> {
  String _appName;
  String _packageName;
  String _version;
  String _buildNumber;

  String _tempPath;
  String _appDocPath;
  String _storageDirectory;

  @override
  void initState() {
    super.initState();
    this._getPackageInfo();
    this._getAppPath();
    this._initDownloader();
  }

  _initDownloader() async {
    WidgetsFlutterBinding.ensureInitialized();
    await FlutterDownloader.initialize(
        debug: true // optional: set false to disable printing logs to console
        );
  }

  //获取版本信息
  _getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    setState(() {
      this._appName = appName;
      this._packageName = packageName;
      this._version = version;
      this._buildNumber = buildNumber;
    });
  }

  //获取本地路径
  _getAppPath() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    Directory directory = await getExternalStorageDirectory();
    String storageDirectory = directory.path;
    setState(() {
      this._tempPath = tempPath;
      this._appDocPath = appDocPath;
      this._storageDirectory = storageDirectory;
    });
  }

  //下载apk
  _downloadApk() async {
    Directory directory = await getExternalStorageDirectory();
    String storageDirectory = directory.path;
    final taskId = await FlutterDownloader.enqueue(
      url: 'http://www.ionic.wang/jdshop.apk',
      savedDir: storageDirectory,
      showNotification:
          true, // show download progress in status bar (for Android)
      openFileFromNotification:
          true, // click on notification to open downloaded file (for Android)
    );

    //监听下载进度
    FlutterDownloader.registerCallback((id, status, progress) {
      print(status);
      print(progress);
    });

    //打开文件
    OpenFile.open("$_storageDirectory/jdshop.apk");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_downward),
        onPressed: _downloadApk,
      ),
      appBar: AppBar(
        title: Text("upate apk"),
      ),
      body: Column(
        children: [
          Row(
            children: [Text("appName: $_appName")],
          ),
          Row(
            children: [Text("packageName: $_packageName")],
          ),
          Row(
            children: [Text("version: $_version")],
          ),
          Row(
            children: [Text("buildNumber: $_buildNumber")],
          ),
          Row(
            children: [Text("tempPath: $_tempPath")],
          ),
          Row(
            children: [Text("appDocPath: $_appDocPath")],
          ),
          Row(
            children: [Text("storageDirectory: $_storageDirectory")],
          )
        ],
      ),
    );
  }
}
