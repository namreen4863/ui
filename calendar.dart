import 'package:flutter/material.dart';
import 'package:home/constants.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class SampleScreen extends StatefulWidget {
  @override
  _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  final _controller = CalendarController();
  final dateFormat = DateFormat('EEEE yyyy-MMMM-dd');
  DateTime _chosenDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
                child: Text(
                  dateFormat.format(_chosenDate),
                  style: TextStyle(
                      color: color1,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ), //for the text I use datetimeNow
              Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10.0, left: 10.0, right: 10.0),
                  child: SizedBox(
                    //height: 300,
                    child: TableCalendar(
                      initialCalendarFormat: CalendarFormat.month,
                      initialSelectedDay: _chosenDate,
                      calendarStyle: CalendarStyle(
                          todayColor: color1,
                          selectedColor: Colors.yellow,
                          todayStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.white)),
                      headerStyle: HeaderStyle(
                        centerHeaderTitle: true,
                        formatButtonDecoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        formatButtonTextStyle: TextStyle(color: Colors.white),
                        formatButtonShowsNext: false,
                      ),
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      onDaySelected: (date, events, e) {
                        setState(() {
                          _chosenDate = date;
                        });
                      },
                      builders: CalendarBuilders(
                        selectedDayBuilder: (context, date, events) =>
                            Container(
                                margin: const EdgeInsets.all(5.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: color1,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  date.day.toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                        todayDayBuilder: (context, date, events) => Container(
                            margin: const EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text(
                              date.day.toString(),
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      calendarController: _controller,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
