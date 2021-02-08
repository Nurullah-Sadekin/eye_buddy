import 'package:eye_buddy/util/colorconfig.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartPage extends StatefulWidget {
  @override
  _BarChartPageState createState() => _BarChartPageState();
}

class _BarChartPageState extends State<BarChartPage> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Progress Breakdown',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "TTCommon",
                          fontWeight: FontWeight.w800,
                          color: ColorConfig.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                              text: 'Stimulation',
                              style: TextStyle(
                                  fontSize: 9, color: ColorConfig.black)),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Dry Eye',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Accommodation',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Relaxation',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Eye Muscles',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Breathing',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Lazy eye',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Morning',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: RichText(
                          text: TextSpan(
                            text: 'Evening',
                            style: TextStyle(
                                fontSize: 9, color: ColorConfig.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 95,
                child: BarChart(
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
                      barGroups: [
                        BarChartGroupData(
                          barsSpace: 12,
                          x: 1,
                          barRods: [
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#FFC392')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#FFAED4')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#5F478C')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#8B82D0')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#FF773D')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#322644')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#FFCE5D')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#42C1A6')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                            BarChartRodData(
                                y: 20,
                                width: 22,
                                colors: [colorFromHex('#181D3D')],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                )),
                          ],
                        )
                      ]),
                ),
              ),
              Divider(
                indent: 25,
                endIndent: 25,
                thickness: 1,
                color: ColorConfig.black,
              ),
            ],
          ),
        ),
      );
}
