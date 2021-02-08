import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/left/visual_equity_test_left2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualEquityLeft1 extends StatefulWidget {
  int id;
  VisualEquityLeft1({this.id});
  @override
  _VisualEquityLeft1State createState() => _VisualEquityLeft1State(id: id);
}

class _VisualEquityLeft1State extends State<VisualEquityLeft1> {
  int id;
  _VisualEquityLeft1State({this.id});
  int counter = 0;

  // ignore: unused_field

  double textSize = 50.0;

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
                        // _incrementCounter();
                        // textSize = textSize - 10.0;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft2(
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

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft2(
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
                        // textSize = textSize - 10.0;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft2(
                                    id: id, counter: counter)));
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
                        print(counter);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft2(
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
