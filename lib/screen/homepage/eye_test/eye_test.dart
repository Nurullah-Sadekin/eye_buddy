import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:eye_buddy/screen/homepage/eye_test/all_test/low_vision.dart';
import 'package:eye_buddy/screen/instruction/Instruction 1.dart';

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
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
        centerTitle: true,
        title: Text(
          'EYE TEST',
          style: TextStyle(
            fontFamily: 'TT Commons DemiBold',
            fontSize: 18,
            color: const Color(0xff181d3d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          width: hw * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Text(
                                      "TEST YOUR",
                                      style: TextStyle(
                                          fontFamily: 'TTCommons',
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: colorFromHex('#181D3D')),
                                    ),
                                    Text(
                                      "VISION",
                                      style: TextStyle(
                                        fontFamily: 'TTCommons',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: colorFromHex('#FEC62D'),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum',
                                  style: TextStyle(
                                      fontFamily: 'TTCommons',
                                      fontSize: 8,
                                      //fontWeight: FontWeight.w600,
                                      color: colorFromHex('#181D3D')),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/superboy.png')
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
                      child: Text(
                        'All Tests',
                        style: TextStyle(
                            fontFamily: 'TTCommons',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: colorFromHex('#181D3D')),
                      )),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Instruction1()),
                  );
                },
                child: Container(
                  child: Image.asset("assets/images/Visual Acuity Test.png"),
                ),
              ),
              Container(
                child: Image.asset("assets/images/Astigmatism Test.png"),
              ),
              Container(
                child: Image.asset("assets/images/Light Sensitivity Test.png"),
              ),
            ]),
      ]),
    );
  }
}
