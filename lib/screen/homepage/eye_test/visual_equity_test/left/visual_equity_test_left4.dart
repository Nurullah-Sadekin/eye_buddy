import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/left/visual_equity_test_left5.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualEquityLeft4 extends StatefulWidget {
  int id;
  int counter;
  VisualEquityLeft4({this.id, this.counter});

  @override
  _VisualEquityLeft4State createState() =>
      _VisualEquityLeft4State(id: id, counter: counter);
}

class _VisualEquityLeft4State extends State<VisualEquityLeft4> {
  int counter;
  int id;
  _VisualEquityLeft4State({this.id, this.counter});
  // ignore: unused_field

  double textSize = 20;
  void _incrementCounter() {
    setState(() {
      counter++;
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft5(
                                    id: id, counter: counter)));

                        // textSize = textSize - 10.0;
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
                                builder: (context) => VisualEquityLeft5(
                                    id: id, counter: counter)));
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
                                builder: (context) => VisualEquityLeft5(
                                    id: id, counter: counter)));
                        // textSize = textSize - 10.0;
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
                                builder: (context) => VisualEquityLeft5(
                                    id: id, counter: counter)));
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
