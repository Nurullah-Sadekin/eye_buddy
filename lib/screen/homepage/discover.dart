import 'package:eye_buddy/eye_excercies/allexcercies.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:eye_buddy/screen/homepage/eye_test/eye_test.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                    height: 185.92,
                    width: 259.11,
                    child: Image.asset("assets/images/eye_man.png")),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllExcercies()),
                  );
                },
                child: Text(
                  'Eye Excercies',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#181D3D')),
                ),
                color: colorFromHex('#FEC62D'),
              ),
              SizedBox(
                height: hp * 0.03,
              ),
              MaterialButton(
                height: hp * 0.07,
                minWidth: hw * 0.8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EyeTest()),
                  );
                },
                child: Text(
                  'Eye Tests',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#181D3D')),
                ),
                color: colorFromHex('#FEC62D'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
