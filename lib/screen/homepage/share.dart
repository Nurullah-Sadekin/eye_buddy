import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:eye_buddy/screen/homepage/left_eye_test_bar.dart';
import 'package:eye_buddy/screen/homepage/right_eye_text_bar.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:eye_buddy/screen/bar_chart_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  var totalXP = 0;
  var thisWeekXP = 0;
  var lastWeekXP = 0;

  DateTime findFirstDateOfTheWeek(DateTime dateTime) {
    return dateTime.subtract(Duration(days: dateTime.weekday - 1));
  }

  // print(findFirstDateOfTheWeek(DateTime.now()).day);

  DateTime findLastDateOfTheWeek(DateTime dateTime) {
    return dateTime
        .add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
  }

  // print(findLastDateOfTheWeek(DateTime.now()));

  DateTime findFirstDateOfPreviousWeek(DateTime dateTime) {
    final DateTime sameWeekDayOfLastWeek =
        dateTime.subtract(const Duration(days: 7));
    return findFirstDateOfTheWeek(sameWeekDayOfLastWeek);
  }

  //print(findFirstDateOfPreviousWeek(DateTime.now()));

  DateTime findLastDateOfPreviousWeek(DateTime dateTime) {
    final DateTime sameWeekDayOfLastWeek =
        dateTime.subtract(const Duration(days: 7));
    return findLastDateOfTheWeek(sameWeekDayOfLastWeek);
  }

  // print(findLastDateOfPreviousWeek(DateTime.now()));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var userID = FirebaseAuth.instance.currentUser.uid;
    FirebaseFirestore.instance
        .collection("EyeExercisePoint")
        .where("userID", isEqualTo: userID)
        .get()
        .then((value) {
      print(
          "+++++++++++++++++++++++++${value.docs[0]['dateTime'].toDate().toString()}");
      print(
          "+++++++++++++++++++++++++${value.docs[0]['dateTime'].toDate().toString().split(" ")[0].toString().split("-")[2]}");
      value.docs.forEach((element) {
        if (element.data()["xpPoint"] != null) {
          totalXP = totalXP + element.data()["xpPoint"];
        }

        int day = int.parse(element
            .data()["dateTime"]
            .toDate()
            .toString()
            .split(" ")[0]
            .toString()
            .split("-")[2]);

        print("=============== $day");

        if (day >= findFirstDateOfTheWeek(DateTime.now()).day &&
            day <= findLastDateOfTheWeek(DateTime.now()).day) {
          thisWeekXP = thisWeekXP + element.data()["xpPoint"];
          print("================= $thisWeekXP");
        }

        if (day >= findFirstDateOfPreviousWeek(DateTime.now()).day &&
            day <= findLastDateOfPreviousWeek(DateTime.now()).day) {
          lastWeekXP = lastWeekXP + element.data()["xpPoint"];
        }

        //   var Date = element
        //       .data()["dateTime"]
        //       .todate()
        //       .toString()
        //       .split(" ")[0]
        //       .toString()
        //       .split("-")[2];
        //   int IntDate = int.parse(Date);
        //   if (IntDate <= 07) {}
      });
      setState(() {});
      print("+++++++++++++++++++++++++++++++$totalXP");
      print("+++++++++++++++++++++++++++++++$thisWeekXP");
      print("+++++++++++++++++++++++++++++++$lastWeekXP");
    });
  }

  @override
  Widget build(BuildContext context) {
    var hw = MediaQuery.of(context).size.width;
    var hp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorFromHex('#FFFFFF'),
        title: Text('History',
            style: TextStyle(
              color: colorFromHex("#181D3D"),
              fontSize: 20,
            )),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(height: 277, child: BarChartPage()),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LeftEyeTestBar(),
                RightEyeTestBar(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total'),
                          Text(
                            totalXP.toString(),
                            style: TextStyle(
                                color: ColorConfig.black,
                                fontSize: 22,
                                fontFamily: 'TTCommon'),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('This week'),
                              Row(
                                children: [
                                  Text(
                                    thisWeekXP.toString(),
                                    style: TextStyle(
                                        color: ColorConfig.black,
                                        fontSize: 22,
                                        fontFamily: 'TTCommon'),
                                  ),
                                  Icon(
                                    Icons.arrow_upward_outlined,
                                    color: colorFromHex('#128D47'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Last Week'),
                              Row(
                                children: [
                                  Text(
                                    lastWeekXP.toString(),
                                    style: TextStyle(
                                        color: ColorConfig.black,
                                        fontSize: 22,
                                        fontFamily: 'TTCommon'),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_sharp,
                                    color: colorFromHex('#FF0000'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 6.0,
                          percent: 0.50,
                          center: Text("60%"),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('200 XP '),
                              Text('Away from'),
                              Text('Goal'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 103,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 6.0,
                          percent: 0.50,
                          center: Text(
                            "Legend",
                            style: TextStyle(fontSize: 9),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('New Level'),
                              Text('Away from'),
                              Text('Goal'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Daily achivement',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'TTCommon',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "S",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "M",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "T",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "W",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "T",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "F",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 2.0,
                          percent: 0.50,
                          center: Text(
                            "S",
                            style: TextStyle(fontSize: 16),
                          ),
                          progressColor: colorFromHex('#FEC62D'),
                          backgroundColor: colorFromHex('#181D3D'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: MaterialButton(
              height: hp * 0.07,
              minWidth: hw * 0.8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () async {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CustomExcercies()));
              },
              child: Text(
                'Update Training Regime',
                style: TextStyle(
                    fontFamily: 'DemiBold', color: colorFromHex('#181D3D')),
              ),
              color: colorFromHex('#FEC62D'),
            ),
          ),
          Container(
            height: 50,
          )
        ],
      ),
    );
  }
}
