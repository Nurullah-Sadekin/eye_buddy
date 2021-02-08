import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/Instruction_right.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualEquityLeft5 extends StatefulWidget {
  int id;
  int counter;
  VisualEquityLeft5({this.id, this.counter});

  @override
  _VisualEquityLeft5State createState() =>
      _VisualEquityLeft5State(id: id, counter: counter);
}

class _VisualEquityLeft5State extends State<VisualEquityLeft5> {
  int id;
  int counter;
  _VisualEquityLeft5State({this.id, this.counter});

  double textSize = 10;
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityIntroRight(
                                    id: id, counter: counter)));
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
                                builder: (context) => VisualEquityIntroRight(
                                    id: id, counter: counter)));
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
                                builder: (context) => VisualEquityIntroRight(
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
                        // textSize = textSize + 10.0;
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityIntroRight(
                                    id: id, counter: counter)));
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
