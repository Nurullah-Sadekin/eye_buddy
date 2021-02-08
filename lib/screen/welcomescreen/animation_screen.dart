import 'package:flutter/material.dart';
import '../homepage/home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

class AnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: hp * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Image.asset("assets/logo.png"),
              ),
            ),
            Container(
              width: hw,
              color: Colors.white70,
              padding: EdgeInsets.only(top: hp * 0.05, bottom: hp * 0.05),
              child: Center(
                child: SvgPicture.asset('assets/svg/eye.svg'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Start journey",
                  style: TextStyle(
                      fontFamily: 'TTCommons',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: colorFromHex('#181D3D')),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: MaterialButton(
          height: 45,
          minWidth: hw * 0.85,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text(
            'Enter the #1 Eye care facility',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'DemiBold',
                fontWeight: FontWeight.w600,
                color: colorFromHex('#181D3D')),
          ),
          color: colorFromHex("#FEC62D"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
