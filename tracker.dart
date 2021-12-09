import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/constants.dart';

/*class Tracker extends StatefulWidget {
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();
  Widget build(BuildContext context) {
    bool _value = false;
    bool _valu = false;
    double screenWidth;
    screenWidth = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        title: Text(
          "Prayer Time App",
          style: TextStyle(color: color2),
        ),
      ),
      body: Column(
        children: [
          Container(
              child: (Stack(children: <Widget>[
            Container(
                child: Image.asset(
                  "assets/tracker.jpeg",
                  //height: 500,
                ),
                height: size.height * .40,
                decoration: BoxDecoration(
                  color: color1,
                )),
            Container(
                padding: EdgeInsets.only(top: 60, bottom: 40),
                child: Column(children: [
                  Text(
                    "1:10 PM",
                    style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.w400,
                        fontSize: 50),
                  ),
                  /*Text(
                          "",
                          style: TextStyle(
                              color: color2, fontWeight: FontWeight.w400, fontSize: 28),
                        ),*/
                  Text(
                    "Asr",
                    style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: color2,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Tue,7 Dec",
                          style: TextStyle(
                              color: color2,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "12 Rabi'Al-Awwal 1443 AD",
                    style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ]))
          ]))),
          Expanded(
            child: new ListView.builder(
                itemCount: checkBoxListTileModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          new CheckboxListTile(
                              activeColor: Colors.pink[300],
                              dense: true,
                              //font change
                              title: new Text(
                                checkBoxListTileModel[index].title,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              ),
                              value: checkBoxListTileModel[index].isCheck,
                              secondary: Container(
                                height: 50,
                                width: 50,
                              ),
                              onChanged: (bool? val) {
                                itemChange(val!, index);
                              }),
                          /* onChanged: (bool val) {
                          itemChange(val, index);
                        })*/
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      CheckBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(title: "Fajr", isCheck: true),
      CheckBoxListTileModel(title: "Asr", isCheck: false),
      CheckBoxListTileModel(title: "Dhuhr", isCheck: false),
      CheckBoxListTileModel(title: "Maghrib", isCheck: false),
      CheckBoxListTileModel(title: "Isha", isCheck: false),
    ];
  }
}
*/
class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        backgroundColor: color1,
        centerTitle: true,
        title: new Text(
          'Salah Tracker',
          style: TextStyle(color: color2),
        ),
      ),*/
      body: new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                color: color1,
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    new CheckboxListTile(
                        activeColor: color2,
                        dense: true,

                        //font change
                        title: new Text(
                          checkBoxListTileModel[index].title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              color: color2),
                        ),
                        value: checkBoxListTileModel[index].isCheck,
                        /*secondary: Container(
                          height: 50,
                          width: 50,
                          color: color1,
                        ),*/
                        onChanged: (bool? val) {
                          itemChange(val!, index);
                        })
                  ],
                ),
              ),
            );
          }),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  int userId;

  String title;
  bool isCheck;

  CheckBoxListTileModel(
      {required this.userId,
      //required this.img,
      required this.title,
      required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(userId: 1, title: "Fajr", isCheck: false),
      CheckBoxListTileModel(userId: 2, title: "Dhuhr", isCheck: false),
      CheckBoxListTileModel(userId: 3, title: "Asr", isCheck: false),
      CheckBoxListTileModel(userId: 4, title: "Maghrib", isCheck: false),
      CheckBoxListTileModel(userId: 5, title: "Isha", isCheck: false),
    ];
  }
}
