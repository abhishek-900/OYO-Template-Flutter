import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:oyo_dummy/pages/Home_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var _connectionStatus = "unknown";
  Connectivity connectivity;
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connectivity = Connectivity();
    subscription =
        connectivity.onConnectivityChanged.listen((ConnectivityResult res) {
      _connectionStatus = res.toString();
      print(_connectionStatus);
      if (res == ConnectivityResult.mobile || res == ConnectivityResult.wifi) {
        Timer(Duration(seconds: 3), () {
          Navigator.of(context).pop();
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => Homepage()));
        });
      } else {
        Timer(Duration(seconds: 4), () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10.0,
                  title: Text("Lost Connection"),
                  content: Text("Check your Internet Connectivity !"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text(
                        "Ok",
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        });
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(

              child: Image.asset(
            'images/App logo.png',
            height: 400,
            width: 200,
          )),
          SizedBox(
            height: 50,
          ),
          Container(
            // color: Colors.blue,
            child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                backgroundColor: Colors.red),
          ),
        ],
      ),
    ));
  }
}
