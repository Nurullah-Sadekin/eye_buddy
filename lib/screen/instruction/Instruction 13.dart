import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 14.dart';

class Instruction13 extends StatefulWidget {
  @override
  _Instruction13State createState() => _Instruction13State();
}

class _Instruction13State extends State<Instruction13> {
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Instruction14()));
                    },
                  )
                ],
              ),
              SizedBox(
                height: hp * 0.15,
              ),
              Container(
                  width: hw * 0.8,
                  child: SvgPicture.asset('assets/svg/instruction 13.svg')),
              SizedBox(
                height: hp * 0.3,
              ),
              Text(
                "Keep Glasses on",
                style: TextStyle(
                    color: colorFromHex('#181D3D'),
                    fontFamily: 'TTCommons',
                    fontSize: 26),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
