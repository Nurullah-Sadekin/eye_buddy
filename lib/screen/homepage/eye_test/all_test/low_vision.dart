import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LowVision extends StatefulWidget {
  @override
  _LowVisionState createState() => _LowVisionState();
}

class _LowVisionState extends State<LowVision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(children: [
            Image.asset(
              'assets/images/Group 857.png',
            ),
            // Positioned(
            //   bottom: 50,
            //   right: 50,
            //   child: Container(
            //     decoration:
            //         BoxDecoration(borderRadius: BorderRadius.circular(10)),
            //     color: colorFromHex('#FEC62D'),
            //     child: Icon(Icons.close),
            //   ),
            // ),
          ]),
        ],
      ),
    );
  }
}
