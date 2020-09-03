import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class MyBarcodeScanner extends StatefulWidget {
  @override
  _MyBarcodeScannerState createState() => _MyBarcodeScannerState();
}

class _MyBarcodeScannerState extends State<MyBarcodeScanner> {
  ScanResult scanResult;
  Future scan() async {
    try {
      // var options = ScanOptions(
      //   strings: {
      //     "cancel": _cancelController.text,
      //     "flash_on": _flashOnController.text,
      //     "flash_off": _flashOffController.text,
      //   },
      //   restrictFormat: selectedFormats,
      //   useCamera: _selectedCamera,
      //   autoEnableFlash: _autoEnableFlash,
      //   android: AndroidOptions(
      //     aspectTolerance: _aspectTolerance,
      //     useAutoFocus: _useAutoFocus,
      //   ),
      // );

      var result = await BarcodeScanner.scan();

      setState(() => scanResult = result);
    } on PlatformException catch (e) {
      var result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      if (e.code == BarcodeScanner.cameraAccessDenied) {
        result.rawContent = 'The user did not grant the camera permission!';
      } else {
        result.rawContent = 'Unknown error: $e';
      }
      setState(() {
        scanResult = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("barcode scan"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("扫码"),
            onPressed: scan,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("scanResult.formatNote: " +
                (scanResult == null ? "null" : scanResult.formatNote)),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("scanResult.rawContent: " +
                (scanResult == null ? "null" : scanResult.rawContent)),
          )
        ],
      ),
    );
  }
}
