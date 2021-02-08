import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/right/visual_equity_test_left3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualEquityRight2 extends StatefulWidget {
  int counter;
  int id;
  int counter2;
  VisualEquityRight2({this.id, this.counter, this.counter2});

  @override
  _VisualEquityRight2State createState() =>
      _VisualEquityRight2State(id: id, counter: counter, counter2: counter2);
}

class _VisualEquityRight2State extends State<VisualEquityRight2> {
  int id;
  int counter;
  int counter2;
  _VisualEquityRight2State({this.id, this.counter, this.counter2});
  // ignore: unused_field
  double textSize = 40;
  void _incrementCounter() {
    setState(() {
      counter2++;
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
                                builder: (context) => VisualEquityRight3(
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
                        // textSize = textSize - 10.0;
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityRight3(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
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
                                builder: (context) => VisualEquityRight3(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                        // textSize = textSize - 10.0;
                        setState(() {});
                      },
                      child: SvgPicture.asset(
                          'assets/svg/eye_test/arrow/left_arrow.svg'),
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
                                builder: (context) => VisualEquityRight3(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
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
