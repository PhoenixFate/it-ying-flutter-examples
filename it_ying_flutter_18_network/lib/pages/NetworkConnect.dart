import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class NetworkConnect extends StatefulWidget {
  @override
  _NetworkConnectState createState() => _NetworkConnectState();
}

class _NetworkConnectState extends State<NetworkConnect> {
  var subscription;
  String _stateText;

  @override
  void initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.mobile) {
        // I am connected to a mobile network.
        setState(() {
          _stateText = "network is mobile";
        });
      } else if (result == ConnectivityResult.wifi) {
        // I am connected to a wifi network.
        setState(() {
          _stateText = "network is wifi";
        });
      } else {
        setState(() {
          _stateText = "no network";
        });
      }
    });
  }

  // Be sure to cancel subscription after you are done
  @override
  dispose() {
    super.dispose();
    subscription.cancel(); //一定要销毁，否则页面返回后再进入有bug
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("network"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text('$_stateText'),
          ),
        ],
      ),
    );
  }
}
