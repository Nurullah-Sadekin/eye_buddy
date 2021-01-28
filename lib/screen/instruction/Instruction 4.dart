import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 1.dart';
import './Instruction 5.dart';

class Instruction4 extends StatefulWidget {
  @override
  _Instruction4State createState() => _Instruction4State();
}

class _Instruction4State extends State<Instruction4> {
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
                              builder: (context) => Instruction5()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.15,
              ),
              Container(
                  height: 200,
                  width: hw * 0.7,
                  child: SvgPicture.asset('assets/svg/instruction 3.svg')),
              SizedBox(
                height: hp * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "Do not press your eyeballs",
                  style: TextStyle(
                    color: colorFromHex('#181D3D'),
                    fontFamily: 'TTCommons',
                    fontSize: 26,
                  ),
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
