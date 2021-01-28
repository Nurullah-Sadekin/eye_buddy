import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import './Instruction 4.dart';

class Instruction3 extends StatefulWidget {
  @override
  _Instruction3State createState() => _Instruction3State();
}

class _Instruction3State extends State<Instruction3> {
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
                              builder: (context) => Instruction4()));
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
                  "Cover your Eyelids with your palms",
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
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: MaterialButton(
          height: 40,
          minWidth: 220,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {},
          child: Text(
            'Done',
            style: TextStyle(
                fontFamily: 'DemiBold',
                color: colorFromHex('#181D3D'),
                fontSize: 16),
          ),
          color: colorFromHex("#FEC62D"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
