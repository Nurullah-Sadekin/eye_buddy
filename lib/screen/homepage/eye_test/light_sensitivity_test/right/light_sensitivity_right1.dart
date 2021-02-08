import 'package:eye_buddy/screen/homepage/eye_test/light_sensitivity_test/right/light_sensitivity_right2.dart';
import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/right/visual_equity_test_left2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightSensitivityRight1 extends StatefulWidget {
  int counter;
  int id;
  LightSensitivityRight1({this.id, this.counter});
  @override
  _LightSensitivityRight1State createState() =>
      _LightSensitivityRight1State(id: id, counter: counter);
}

class _LightSensitivityRight1State extends State<LightSensitivityRight1> {
  int id;
  int counter;
  _LightSensitivityRight1State({this.id, this.counter});
  int counter2 = 0;

  // ignore: unused_field

  double textSize = 50.0;

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
                            // _incrementCounter();
                            // textSize = textSize - 10.0;

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightSensitivityRight2(
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

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightSensitivityRight2(
                                            id: id,
                                            counter: counter,
                                            counter2: counter2)));
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
                            // textSize = textSize - 10.0;

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightSensitivityRight2(
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
                            print(counter);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightSensitivityRight2(
                                            id: id,
                                            counter: counter,
                                            counter2: counter2)));
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
