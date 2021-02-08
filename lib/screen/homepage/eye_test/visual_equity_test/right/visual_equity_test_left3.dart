import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/right/visual_equity_test_left4.dart';

class VisualEquityRight3 extends StatefulWidget {
  int id;
  int counter;
  int counter2;
  VisualEquityRight3({this.id, this.counter, this.counter2});

  @override
  _VisualEquityRight3State createState() =>
      _VisualEquityRight3State(id: id, counter: counter, counter2: counter2);
}

class _VisualEquityRight3State extends State<VisualEquityRight3> {
  int counter;
  int id;
  int counter2;
  _VisualEquityRight3State({this.id, this.counter, this.counter2});
  // ignore: unused_field

  double textSize = 30;
  void _incrementCounter() {
    setState(() {
      counter2++;
    });
  }

  // void _decrementSize() {
  //   setState(() {
  //     textSize- 10;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 100, 25, 100),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // textSize = textSize - 10.0;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityRight4(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                      },
                      child: SvgPicture.asset(
                          'assets/svg/eye_test/arrow/up_arrow.svg'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityRight4(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                        // textSize = textSize - 10.0;
                      },
                      child: SvgPicture.asset(
                          'assets/svg/eye_test/arrow/left_arrow.svg'),
                    ),
                    Text(
                      "E",
                      style: TextStyle(fontSize: textSize),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityRight4(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                      },
                      child: SvgPicture.asset(
                          'assets/svg/eye_test/arrow/right_arrow.svg'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _incrementCounter();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityRight4(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                        // textSize = textSize + 10.0;

                        // ignore: unnecessary_statements
                      },
                      child: SvgPicture.asset(
                          'assets/svg/eye_test/arrow/down_arrow.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
