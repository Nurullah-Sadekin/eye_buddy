import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 17.dart';

class Instruction16 extends StatefulWidget {
  @override
  _Instruction16State createState() => _Instruction16State();
}

class _Instruction16State extends State<Instruction16> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                              builder: (context) => Instruction17()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.15,
              ),
              Center(
                child: SvgPicture.asset("assets/svg/instruction 16.svg"),
              ),
              // Center(
              //     child: Column(
              //   children: <Widget>[
              //     SvgPicture.asset("assets/svg/instruction 6-1.svg"),
              //   ],
              // )),
              SizedBox(
                height: hp * 0.3,
              ),
              Center(
                child: Text(
                  "Close your left eye",
                  style: TextStyle(
                      color: colorFromHex('#181D3D'),
                      fontFamily: 'TTCommons',
                      fontSize: 26),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
