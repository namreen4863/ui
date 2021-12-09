import 'package:flutter/material.dart';
import 'package:home/calendar.dart';
import 'package:home/tracker.dart';

import 'constants.dart';

class Trackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        centerTitle: true,
        title: Text(
          "Salah Tracker",
          style: TextStyle(color: color2),
        ),
      ),
      body: Column(children: [
        Container(
            child: (Stack(children: <Widget>[
          Container(
              child: Column(children: [
            Text(
              "9 December 2021",
              style: TextStyle(
                  color: color2, fontWeight: FontWeight.w400, fontSize: 20),
              //SampleScreen(),
            )
          ]))
        ]))),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )),
          child: CheckBoxListTileDemo(),
        ))
      ]),
    );
  }
}
