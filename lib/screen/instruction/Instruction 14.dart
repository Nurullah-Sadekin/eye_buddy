import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 15.dart';

class Instruction14 extends StatefulWidget {
  @override
  _Instruction14State createState() => _Instruction14State();
}

class _Instruction14State extends State<Instruction14> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: colorFromHex('#181D3D'),
                          fontFamily: 'TTCommons',
                          fontSize: 16),
                    ),
                    onTap: () {},
                  )
                ],
              ),
              // SizedBox(
              //   height: hp * 0.15,
              // ),
              Container(
                  width: hw * 0.3,
                  height: hp * 0.3,
                  child: SvgPicture.asset('assets/svg/instruction 14.svg')),
              // SizedBox(
              //   height: hp * 0.3,
              // ),
              Container(
                width: 200,
                height: 60,
                child: Text(
                  'Take off your glasses/contacts',
                  style: TextStyle(
                      color: colorFromHex('#181D3D'),
                      fontFamily: 'TTCommons',
                      fontSize: 26),
                  textAlign: TextAlign.center,
                ),
              ),
              // Column(
              //   children: [
              //     Text(
              //       "Take off your",
              //       style: TextStyle(
              //           color: colorFromHex('#181D3D'),
              //           fontFamily: 'TTCommons',
              //           fontSize: 26),
              //       textAlign: TextAlign.center,
              //     ),
              //     Text(
              //       "glasses/contacts",
              //       style: TextStyle(
              //           color: colorFromHex('#181D3D'),
              //           fontFamily: 'TTCommons',
              //           fontSize: 26),
              //       textAlign: TextAlign.center,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
