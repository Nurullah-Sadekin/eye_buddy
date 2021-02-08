import 'package:eye_buddy/screen/homepage/eye_test/eye_test.dart';
import 'package:eye_buddy/screen/homepage/home.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:eye_buddy/resultpage/bad.dart';

class GoodResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var hp = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   leading: Image.asset('assets/icon/back_arrow.png'),
      //   actions: <Widget>[
      //     Row(
      //       children: <Widget>[
      //         Container(
      //           //   padding: EdgeInsets.only(top: 9),
      //           child: Stack(
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/icon/button_bg.png',
      //                 height: 40,
      //                 width: 40,
      //               ),
      //               Image.asset(
      //                 'assets/icon/button_play.png',
      //                 height: 40,
      //                 width: 40,
      //               )
      //             ],
      //           ),
      //         ),
      //         Container(
      //           // padding: EdgeInsets.only(top: 9),
      //           child: Stack(
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/icon/button_bg.png',
      //                 height: 40,
      //                 width: 40,
      //               ),
      //               Image.asset(
      //                 'assets/icon/button_play.png',
      //                 height: 40,
      //                 width: 40,
      //               )
      //             ],
      //           ),
      //         ),
      //         Container(
      //           //  padding: EdgeInsets.only(top: 9),
      //           child: Stack(
      //             children: <Widget>[
      //               Image.asset(
      //                 'assets/icon/button_bg.png',
      //                 height: 40,
      //                 width: 40,
      //               ),
      //               Image.asset(
      //                 'assets/icon/button_play.png',
      //                 height: 40,
      //                 width: 40,
      //               )
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: Center(
        child: ListView(children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Lottie.asset('assets/1.json'),
              Image.asset("assets/images/good.png")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Result",
                  style: TextStyle(fontSize: 30, fontFamily: 'TTCommons'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "It is a long established fact that a reader will be distracted by the readable content of ",
                    style: TextStyle(fontSize: 14, fontFamily: 'TTCommons'),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EyeTest()),
                  );
                },
                child: Text(
                  'Retry Test',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text(
                  'Exit',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
