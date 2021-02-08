import 'package:eye_buddy/util/colorconfig.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RightEyeTestBar extends StatefulWidget {
  @override
  _RightEyeTestBarState createState() => _RightEyeTestBarState();
}

class _RightEyeTestBarState extends State<RightEyeTestBar> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;
  String dropdownValue = 'Color Blind';

  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Container(
      width: 170,
      height: 120,
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Container(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Right Eye'),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 10,
                        style: TextStyle(color: ColorConfig.black),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'Color Blind',
                          'AMD',
                          'Near Vision',
                          'Light Sensitivity',
                          'Low Vision',
                          'Astigmatism'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 7),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 157,
              height: 80,
              // decoration: const BoxDecoration(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(18),
              //     ),
              //     color: Color(0xffFFFFFF)),
              child: LineChart(
                mainData(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        leftTitles: SideTitles(showTitles: false),
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 6),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1st Week';
              case 2:
                return '2nd Week';
              case 3:
                return '3rd Week';
              case 4:
                return '4th Week';
            }
            return '';
          },
          // margin: 8,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 5,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 0),
            FlSpot(1.6, 2),
            FlSpot(2.9, 4),
            FlSpot(3.9, 1),
          ],
          isCurved: true,
          colors: [ColorConfig.yeallow],
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          // belowBarData: BarAreaData(
          //   show: true,
          // colors:
          //     gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          // ),
        ),
      ],
    );
  }
}
