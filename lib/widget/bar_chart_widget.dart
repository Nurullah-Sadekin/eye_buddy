import 'package:eye_buddy/model/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BarChartWidget extends StatefulWidget {
  @override
  _BarChartWidgetState createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  final double barWidth = 22;

  var stimulation = 0;

  var dryEye = 0;

  var accoSpasm = 0;

  var relaxation = 0;

  var eyeMuscles = 0;

  var allDay = 0;

  var lazyEye = 0;

  var morning = 0;

  var evening = 0;

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
      value.docs.forEach((element) {
        if (element.data()["exName"] == "DryEyes") {
          dryEye = dryEye + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "AccoSpasm") {
          accoSpasm = accoSpasm + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "Relaxation") {
          relaxation = relaxation + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "EyeMuscles") {
          eyeMuscles = eyeMuscles + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "AllDay") {
          allDay = allDay + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "Simulation") {
          stimulation = stimulation + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "LazyEye") {
          lazyEye = lazyEye + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "DryEyes") {
          morning = morning + element.data()["xpPoint"];
        }
        if (element.data()["exName"] == "DryEyes") {
          evening = evening + element.data()["xpPoint"];
        }
      });
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => BarChart(
        BarChartData(
          borderData: FlBorderData(
            show: false,
          ),
          alignment: BarChartAlignment.center,
          maxY: 20,
          minY: 0,
          groupsSpace: 12,
          barTouchData: BarTouchData(enabled: true),
          titlesData: FlTitlesData(
            show: false,
          ),
          barGroups: BarData.barData
              .map(
                (data) => BarChartGroupData(
                  x: data.id,
                  barRods: [
                    BarChartRodData(
                      y: data.y,
                      width: barWidth,
                      colors: [data.color],
                      borderRadius: data.y > 0
                          ? BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                            )
                          : BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      );
}
