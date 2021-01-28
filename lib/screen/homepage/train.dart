import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';

class Train extends StatefulWidget {
  @override
  _TrainState createState() => _TrainState();
}

class _TrainState extends State<Train> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Daily Training",
                        style: TextStyle(
                            color: colorFromHex('#181D3D'),
                            fontFamily: 'TTCommons-DemiBold',
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: colorFromHex('#FEC62D'),
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.settings,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: hp * 0.06, bottom: hp * 0.05),
                  child: Text(
                    'Morning Training',
                    style: TextStyle(
                        fontFamily: 'DemiBold',
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: hp * 0.1, bottom: hp * 0.1),
                  child: Container(
                      height: 185.92,
                      width: 259.11,
                      child: Image.asset("assets/images/big_eye.png")),
                ),
                SizedBox(
                  height: hp * 0.07,
                ),
                MaterialButton(
                  height: hp * 0.07,
                  minWidth: hw * 0.8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () async {},
                  child: Text(
                    'Begin Training',
                    style: TextStyle(
                        fontFamily: 'DemiBold', color: colorFromHex('#181D3D')),
                  ),
                  color: colorFromHex('#FEC62D'),
                ),
                SizedBox(
                  height: hp * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
