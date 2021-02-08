import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/Instruction_right.dart';
import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class VisualEquityRight5 extends StatefulWidget {
  int id;
  int counter;
  int counter2;
  VisualEquityRight5({this.id, this.counter, this.counter2});

  @override
  _VisualEquityRight5State createState() =>
      _VisualEquityRight5State(id: id, counter: counter, counter2: counter2);
}

class _VisualEquityRight5State extends State<VisualEquityRight5> {
  int id;
  int counter;
  int counter2;
  _VisualEquityRight5State({this.id, this.counter, this.counter2});

  double textSize = 10;
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AquityResult(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                        // textSize = textSize - 10.0;
                        setState(() {});
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
                                builder: (context) => AquityResult(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
                        // textSize = textSize - 10.0;
                        setState(() {});
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
                                builder: (context) => AquityResult(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
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
                        // textSize = textSize + 10.0;
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AquityResult(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2)));
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
