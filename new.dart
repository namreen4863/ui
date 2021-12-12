import 'package:flutter/material.dart';

import 'package:home/calendar.dart';
import 'package:home/tracker.dart';

import 'constants.dart';

class New extends StatelessWidget {
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
      body: Container(
          child: Column(children: <Widget>[
        Expanded(
          child: SampleScreen(),
          flex: 4,
        ),
        Expanded(child: CheckBoxListTileDemo(), flex: 3)
      ])),
    );
  }
}
