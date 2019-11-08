import 'package:flutter/material.dart';
import 'package:oyo_dummy/components/Amenties.dart';

import 'package:oyo_dummy/components/carousel.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ViewPage extends StatefulWidget {
  @override
  ViewPageState createState() => ViewPageState();
}

class ViewPageState extends State<ViewPage> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  bool check2 = false;

  List<String> amen2 = [
    "1-2",
    "3-5",
    "6 or more",
    "1-2",
    "3-5",
    "6 or more",
  ];

  bool check1 = false;
  List<String> amen1 = [
    "1 BHK",
    "2 BHK",
    "3 BHK",
    "4 BHK",
    "1 BHK",
    "2 BHK",
    "3 BHK",
    "4 BHK"
  ];

  Icon ic;
  bool pressed = false;

  @override
  void initState() {
    super.initState();
    ic = Icon(Icons.favorite_border, color: Colors.white, size: 33);
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings('oyo');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android, iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: SelectNotification);
  }

  Future SelectNotification(String payload) {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            elevation: 5,
            title: new Text('Notification'),
            content: new Text(
              '$payload',
              style: TextStyle(color: Colors.green),
            ),
          ),
    );
  }

  Future _showNotificationWithSound() async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        sound: 'audio', importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics =
        new IOSNotificationDetails(sound: "audio");
    var platformChannelSpecifics = new NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Booking Status',
      'Booking sucessfull !',
      platformChannelSpecifics,
      payload: 'Thank you for booking at OYO !',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              slider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  /* SizedBox(
            width: 50,
          ),*/

                  IconButton(
                    icon: ic,
                    onPressed: () {
                      if (pressed == false) {
                        setState(() {
                          pressed = true;
                          ic =
                              Icon(Icons.favorite, color: Colors.red, size: 33);
                        });
                      } else {
                        setState(() {
                          pressed = false;
                          ic = Icon(Icons.favorite_border,
                              color: Colors.white, size: 33);
                        });
                      }
                    },
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rajan Hotel",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "475A Apsara Nagar, MP chouk, Delhi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Review",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Amenities(),
          /************************************************************************ room ***/

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Rooms",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //  color: Colors.yellow,
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: amen1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        if (check1 == false) {
                          check1 = true;
                        } else if (check1 == true) {
                          check1 = false;
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          height: 100,
                          width: 140,
                          color: Color(0xffbfbfbf),
                          child: Center(
                            child: Text(
                              amen1[index],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),

          /******************************************************** people ***********/
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "No: of persons",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //  color: Colors.yellow,
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: amen2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        if (check2 == false) {
                          check2 = true;
                        } else if (check2 == true) {
                          check2 = false;
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          height: 100,
                          width: 140,
                          color: Color(0xffbfbfbf),
                          child: Center(
                            child: Text(
                              amen2[index],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: RaisedButton(
                color: Colors.blueAccent,
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 19),
                  child: Text(
                    "BOOK",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: checkAll,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  _showAlert(String content) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Booking Status"),
            content: Text(
              content,
              style: TextStyle(color: Colors.red),
            ),
          );
        });
  }

  void checkAll() {
    print(check1);
    print(check2);
    if (check2 == true && check1 == true)
      _showNotificationWithSound();
    else if (check2 == true && check1 == false) {
      _showAlert('Please select Rooms as well !');
    } else if (check2 == false && check1 == true) {
      _showAlert('Please select No. of persons as well !');
    } else {
      _showAlert('Please slect Rooms and No of persons ! ');
    }
  }
}
