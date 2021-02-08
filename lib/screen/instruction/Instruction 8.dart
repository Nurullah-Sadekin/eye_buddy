import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 9.dart';

class Instruction8 extends StatefulWidget {
  @override
  _Instruction8State createState() => _Instruction8State();
}

class _Instruction8State extends State<Instruction8> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
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
              SizedBox(
                height: hp * 0.15,
              ),
              Container(
                  height: 150,
                  width: 150,
                  child: SvgPicture.asset('assets/svg/instruction 8.svg')),
              SizedBox(
                height: hp * 0.3,
              ),
              SizedBox(
                width: hw * 0.8,
                child: Text(
                  "Move your eyes to the pronounced direction",
                  style: TextStyle(
                      color: colorFromHex('#181D3D'),
                      fontFamily: 'TTCommons',
                      fontSize: 26),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
