import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:eye_buddy/eye_excercies/awsum_page.dart';
import 'package:eye_buddy/eye_excercies/great_work.dart';
import 'package:eye_buddy/model/eye_excercies_model.dart';
import 'package:eye_buddy/resultpage/good.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:eye_buddy/util/colorconfig.dart';

class ClosedEyeMove extends StatefulWidget {
  int id;
  String exName;
  ClosedEyeMove({this.id, this.exName});
  @override
  _ClosedEyeMoveState createState() =>
      _ClosedEyeMoveState(id: id, exName: exName);
}

class _ClosedEyeMoveState extends State<ClosedEyeMove>
    with SingleTickerProviderStateMixin {
  int id;
  String exName;
  _ClosedEyeMoveState({this.id, this.exName});

  AnimationController _controller;
  bool _isPlaying = true;
  String link;
  String name;
  @override
  void initState() {
    super.initState();

    name = eyeExcerciesFiles[id - 1].title;
    link = eyeExcerciesFiles[id - 1].animation;
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.3,
      duration: Duration(seconds: 3),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    sendDataToServer() {
      var userID = FirebaseAuth.instance.currentUser.uid;
      FirebaseFirestore.instance.collection("EyeExercisePoint").doc().set({
        "userID": userID,
        "dateTime": DateTime.now(),
        "exName": exName,
        "xpPoint": 15,
        "month": DateTime.now().month,
      });
    }

    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(fontSize: 18, color: colorFromHex('#181D3D')),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: Image.asset('assets/icon/back_arrow.png'),
            onTap: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Container(
                //   padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularCountDownTimer(
                  isTimerTextShown: false,
                  // Countdown duration in Seconds
                  duration: 15,

                  // Width of the Countdown Widget
                  width: 10,

                  // Height of the Countdown Widget
                  height: 10,

                  // Default Color for Countdown Timer
                  color: colorFromHex("#FEC62D"),

                  // Filling Color for Countdown Timer
                  fillColor: colorFromHex('#181D3D'),

                  // Border Thickness of the Countdown Circle
                  strokeWidth: 10.0,

                  // Text Style for Countdown Text

                  // true for reverse countdown (max to 0), false for forward countdown (0 to max)
                  isReverse: true,

                  // Function which will execute when the Countdown Ends
                  onComplete: () {
                    // Here, do whatever you want
                    sendDataToServer();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GreatWork()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/angel.zip'),
        ],
      ),
    );
  }
}
