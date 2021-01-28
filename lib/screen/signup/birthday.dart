import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:eye_buddy/screen/signup/eye_issue.dart';
import 'package:flutter/cupertino.dart';

class Birthday extends StatefulWidget {
  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    DateTime _dateTime = DateTime.now();
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, hw * 0.3, 20, 0),
        children: <Widget>[
          Text(
            'Your birth date',
            style: TextStyle(
              fontFamily: 'DemiBold',
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: hw * 0.2,
          ),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: _dateTime,
              onDateTimeChanged: (dateTime) {
                setState(() {
                  _dateTime = dateTime;
                });
              },
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: MaterialButton(
          height: 40,
          minWidth: 220,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EyeIssue()));
          },
          child: Text(
            'Done',
            style: TextStyle(
                fontFamily: 'DemiBold',
                color: colorFromHex('#181D3D'),
                fontSize: 16),
          ),
          color: colorFromHex("#FEC62D"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
