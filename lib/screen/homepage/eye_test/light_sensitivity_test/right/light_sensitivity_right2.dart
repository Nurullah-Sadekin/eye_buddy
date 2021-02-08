import 'package:eye_buddy/screen/homepage/eye_test/light_sensitivity_test/right/light_sensitivity_right3.dart';
import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/right/visual_equity_test_left3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightSensitivityRight2 extends StatefulWidget {
  int counter;
  int id;
  int counter2;
  LightSensitivityRight2({this.id, this.counter, this.counter2});

  @override
  _LightSensitivityRight2State createState() => _LightSensitivityRight2State(
      id: id, counter: counter, counter2: counter2);
}

class _LightSensitivityRight2State extends State<LightSensitivityRight2> {
  int id;
  int counter;
  int counter2;
  _LightSensitivityRight2State({this.id, this.counter, this.counter2});
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
                            // textSize = textSize - 10.0;
                            setState(() {});
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightSensitivityRight3(
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
                                    builder: (context) =>
                                        LightSensitivityRight3(
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightSensitivityRight3(
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
                                    builder: (context) =>
                                        LightSensitivityRight3(
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
