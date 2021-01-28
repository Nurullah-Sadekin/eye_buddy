import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:eye_buddy/resultpage/good.dart';

class Share extends StatefulWidget {
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: MaterialButton(
          // height: hp * 0.07,
          // minWidth: hw * 0.7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GoodResult()),
            );
          },
          child: Text(
            'Result Page',
            style: TextStyle(
                fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
          ),
          color: colorFromHex('#181D3D'),
        ),
      ),
    );
  }
}
