import 'package:eye_buddy/model/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  final double barWidth = 22;

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
