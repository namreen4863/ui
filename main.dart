import 'package:flutter/material.dart';
import 'package:home/calendar.dart';
import 'package:home/constants.dart';
import 'package:home/home.dart';
import 'package:home/new.dart';
import 'package:home/todo.dart';
import 'package:home/track.dart';
import 'package:home/tracker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: color2,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        //backgroundColor: color2,
      ),
      home: New(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF011F14),
      appBar: AppBar(
        backgroundColor: color1,
        title: Text(
          "Salah Tracker",
          style: TextStyle(color: color2),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '1:10 PM',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: color2),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Asr',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600, color: color2),
              ),
              SizedBox(
                height: 10,
              ),
              Text('6 December',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: color2)),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: CheckBoxListTileDemo(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
