import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/left/visual_equity_test_left3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualEquityLeft2 extends StatefulWidget {
  int counter;
  int id;
  VisualEquityLeft2({this.id, this.counter});

  @override
  _VisualEquityLeft2State createState() =>
      _VisualEquityLeft2State(id: id, counter: counter);
}

class _VisualEquityLeft2State extends State<VisualEquityLeft2> {
  int id;
  int counter;
  _VisualEquityLeft2State({this.id, this.counter});
  // ignore: unused_field
  double textSize = 40;
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

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
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft3(
                                    id: id, counter: counter)));
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
                        // textSize = textSize - 10.0;
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft3(
                                    id: id, counter: counter)));
                      },
                      child: SvgPicture.asset(
                          'assets/svg/eye_test/arrow/left_arrow.svg'),
                    ),
                    Text(
                      'E',
                      style: TextStyle(fontSize: textSize),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft3(
                                    id: id, counter: counter)));
                        // textSize = textSize - 10.0;
                        setState(() {});
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
                                builder: (context) => VisualEquityLeft3(
                                    id: id, counter: counter)));
                        // textSize = textSize + 10.0;
                        counter++;
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
