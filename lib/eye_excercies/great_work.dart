import 'package:eye_buddy/screen/homepage/home.dart';
import 'package:eye_buddy/screen/homepage/share.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GreatWork extends StatefulWidget {
  @override
  _GreatWorkState createState() => _GreatWorkState();
}

class _GreatWorkState extends State<GreatWork> {
  @override
  Widget build(BuildContext context) {
    var hw = MediaQuery.of(context).size.width;
    var hp = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Great work',
                style: TextStyle(
                    color: ColorConfig.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TTCommon'),
              ),
              SizedBox(
                height: hp * 0.2,
              ),
              Container(
                height: 200,
                width: hw * 0.9,
                child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_LoU6vj.json',
                ),
              ),
              SizedBox(
                height: hp * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      height: 40,
                      minWidth: 150,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        // _incrementCounter();
                        Navigator.push(
                            context,
                            // MaterialPageRoute(builder: (context) => Stats()));
                            MaterialPageRoute(builder: (context) => Stats()));
                        // print(counter);
                      },
                      child: Text(
                        'Check Stats',
                        style: TextStyle(
                            fontFamily: 'DemiBold',
                            color: colorFromHex('#181D3D'),
                            fontSize: 16),
                      ),
                      color: colorFromHex("#FEC62D"),
                    ),
                    MaterialButton(
                      height: 40,
                      minWidth: 150,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                        // print(counter);
                      },
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontFamily: 'DemiBold',
                            color: colorFromHex('#FEC62D'),
                            fontSize: 16),
                      ),
                      color: colorFromHex("#181D3D"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
