import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import 'Instruction 8.dart';

class Instruction7 extends StatefulWidget {
  @override
  _Instruction7State createState() => _Instruction7State();
}

class _Instruction7State extends State<Instruction7> {
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
                              builder: (context) => Instruction8()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.15,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset("assets/svg/instruction 6-1.svg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset("assets/svg/instruction 6-1.svg"),
                    ),
                  ]),
              // Center(
              //     child: Column(
              //   children: <Widget>[
              //     SvgPicture.asset("assets/svg/instruction 6-1.svg"),
              //   ],
              // )),
              SizedBox(
                height: hp * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "Close your eye tights when you feel vibration",
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
