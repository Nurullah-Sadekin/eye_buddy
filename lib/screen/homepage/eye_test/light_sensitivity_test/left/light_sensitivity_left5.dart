import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/Instruction_right.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightSensitivityLeft5 extends StatefulWidget {
  int id;
  int counter;
  LightSensitivityLeft5({this.id, this.counter});

  @override
  _LightSensitivityLeft5State createState() =>
      _LightSensitivityLeft5State(id: id, counter: counter);
}

class _LightSensitivityLeft5State extends State<LightSensitivityLeft5> {
  int id;
  int counter;
  _LightSensitivityLeft5State({this.id, this.counter});

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
        appBar: AppBar(
          leading: InkWell(
            child: Image.asset('assets/icon/back_arrow.png'),
            onTap: () {
              Navigator.pop(context, true);
            },
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Light Sensitivity',
            style: TextStyle(
              fontFamily: 'TT Commons DemiBold',
              fontSize: 18,
              color: const Color(0xff181d3d),
            ),
            textAlign: TextAlign.left,
          ),
        ),
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
                                    builder: (context) =>
                                        VisualEquityIntroRight(
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
                                    builder: (context) =>
                                        VisualEquityIntroRight(
                                            id: id, counter: counter)));
                            // textSize = textSize - 10.0;
                            setState(() {});
                          },
                          child: SvgPicture.asset(
                              'assets/svg/eye_test/arrow/left_arrow.svg'),
                        ),
                        Text(
                          'C',
                          style: TextStyle(fontSize: textSize),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        VisualEquityIntroRight(
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
                                    builder: (context) =>
                                        VisualEquityIntroRight(
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
