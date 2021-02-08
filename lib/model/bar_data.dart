import 'package:eye_buddy/model/data.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';

class BarData {
  static int interval = 1;

  static List<Data> barData = [
    Data(
      id: 0,
      name: 'Mon',
      y: 15,
      color: colorFromHex('#FFC392'),
    ),
    Data(
      name: 'Tue',
      id: 1,
      y: 12,
      color: colorFromHex('#FFAED4'),
    ),
    Data(
      name: 'Wed',
      id: 2,
      y: 11,
      color: colorFromHex('#5F478C'),
    ),
    Data(
      name: 'Thu',
      id: 3,
      y: 10,
      color: colorFromHex('#8B82D0'),
    ),
    Data(
      name: 'Fri',
      id: 4,
      y: 5,
      color: colorFromHex('#FF773D'),
    ),
    Data(
      name: 'Sat',
      id: 5,
      y: 17,
      color: colorFromHex('#322644'),
    ),
    Data(
      name: 'Sun',
      id: 6,
      y: 5,
      color: colorFromHex('#FFCE5D'),
    ),
    Data(
      name: 'Sun',
      id: 7,
      y: 5,
      color: colorFromHex('#42C1A6'),
    ),
    Data(
      name: 'Sun',
      id: 8,
      y: 5,
      color: colorFromHex('#181D3D'),
    ),
  ];
}
