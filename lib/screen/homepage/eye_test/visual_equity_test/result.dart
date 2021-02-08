import 'package:eye_buddy/resultpage/bad.dart';
import 'package:eye_buddy/resultpage/good.dart';
import 'package:eye_buddy/resultpage/ok.dart';
import 'package:flutter/material.dart';

class AquityResult extends StatefulWidget {
  int id;
  int counter;
  int counter2;
  AquityResult({this.id, this.counter, this.counter2});

  @override
  _AquityResultState createState() =>
      _AquityResultState(id: id, counter: counter, counter2: counter2);
}

class _AquityResultState extends State<AquityResult> {
  int id;
  int counter;
  int counter2;

  _AquityResultState({this.id, this.counter, this.counter2});

  @override
  Widget build(BuildContext context) {
    print(counter + counter2);
    return counter + counter2 == 10
        ? GoodResult()
        : counter + counter2 >= 1 || 9 <= counter + counter2
            ? OK()
            : Bad();
  }
}
