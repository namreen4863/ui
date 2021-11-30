import 'package:flutter/material.dart';
import 'package:home/grid_view.dart';
//import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth;
    screenWidth = MediaQuery.of(context).size.width;
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
                "assets/lights.jpeg",
                width: screenWidth,
                //height: 500,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 190, bottom: 40),
                child: Column(children: [
                  Text(
                    "10:25 PM",
                    style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                  ),
                  /*Text(
                          "",
                          style: TextStyle(
                              color: color2, fontWeight: FontWeight.w400, fontSize: 28),
                        ),*/
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: color2,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Mumbai",
                          style: TextStyle(
                              color: color2,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Sunday,14 Nov",
                    style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
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
            child: Container(
              child: Container(
                color: Color(0xFF011F14),
                //child: Padding(
                padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: .99,
                  children: <Widget>[
                    Card(
                      color: color1,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(22, 15, 17, 17),
                            //child: Center(
                            child: IconButton(
                              //Icons.wifi,
                              //size: 50,
                              color: color2, icon: Icon(Icons.search),
                              iconSize: 50,
                              onPressed: () {},
                            ),
                          ),
                          // ),
                          Container(
                            margin: EdgeInsets.only(top: 72, left: 22),
                            child: Text('Mosque\n Search',
                                style: TextStyle(
                                  color: color2,
                                  fontSize: 17.0,
                                  //fontWeight: FontWeight.bold
                                )),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: color1,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(22, 12, 17, 17),
                              child: IconButton(
                                //size: 50,
                                color: color2, icon: Icon(Icons.food_bank),
                                iconSize: 50,
                                onPressed: () {},
                                // )
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 72, left: 16),
                              child: Text(
                                'Halal Food \n  Search',
                                style: TextStyle(
                                  color: color2,
                                  fontSize: 17.0,
                                  //fontWeight: FontWeight.bold)),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      color: color1,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 17, 17, 17),
                            child: IconButton(
                              //Icons.access_alarm,
                              iconSize: 40,
                              color: color2, icon: Icon(Icons.watch),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 72, left: 17),
                            child: Text('Prayer Time',
                                style: TextStyle(
                                  color: color2,
                                  fontSize: 17.0,
                                  //fontWeight: FontWeight.bold
                                )),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: color1,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(22, 15, 17, 17),
                            child: IconButton(
                              //Icons.access_alarm,
                              iconSize: 50,
                              color: color2,
                              icon: Icon(Icons.list_alt_rounded),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 72, left: 22),
                            child: Text(' Prayer\nTracker',
                                style: TextStyle(
                                  color: color2,
                                  fontSize: 17.0,
                                  //fontWeight: FontWeight.bold
                                )),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: color1,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(22, 15, 17, 17),
                            child: IconButton(
                              //Icons.access_alarm,
                              iconSize: 50,
                              color: color2,
                              icon: Icon(Icons.calendar_today_sharp),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 77, left: 12),
                            child: Text('Fast Tracker',
                                style: TextStyle(
                                  color: color2,
                                  fontSize: 17.0,
                                  //fontWeight: FontWeight.bold
                                )),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: color1,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(22, 15, 17, 17),
                            child: IconButton(
                              //Icons.access_alarm,
                              iconSize: 50,
                              color: color2,
                              icon: Icon(Icons.compass_calibration_sharp),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 72, left: 22),
                            child: Text('   Qibla Compass',
                                style: TextStyle(
                                  color: color2,
                                  fontSize: 17.0,
                                  //fontWeight: FontWeight.bold
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
