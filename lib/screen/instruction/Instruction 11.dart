import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 12.dart';

class Instruction11 extends StatefulWidget {
  @override
  _Instruction11State createState() => _Instruction11State();
}

class _Instruction11State extends State<Instruction11> {
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
                width: hw * 0.2,
                child: SvgPicture.asset('assets/svg/instruction 11.svg'),
              ),
              SizedBox(
                height: hp * 0.3,
              ),
              Text(
                "During excercise you should follow the moving object",
                style: TextStyle(
                    color: colorFromHex('#181D3D'),
                    fontFamily: 'TTCommons',
                    fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}
