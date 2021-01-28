import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 3.dart';

class Instruction2 extends StatefulWidget {
  @override
  _Instruction2State createState() => _Instruction2State();
}

class _Instruction2State extends State<Instruction2> {
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Instruction3()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: colorFromHex('#181D3D'),
                          fontFamily: 'TTCommons',
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: hp * 0.15,
              ),
              Container(
                  height: 150,
                  width: 150,
                  child: SvgPicture.asset('assets/svg/instruction 2.svg')),
              SizedBox(
                height: hp * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  "Rub your hands Together & make them warm",
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
