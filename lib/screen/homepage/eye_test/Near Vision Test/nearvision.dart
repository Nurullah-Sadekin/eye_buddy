import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/instruction_right.dart';
import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/result.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NearVision extends StatefulWidget {
  int id;
  int slide;
  NearVision({this.id, this.slide});
  @override
  _NearVisionState createState() => _NearVisionState(id: id, slide: slide);
}

class _NearVisionState extends State<NearVision> {
  int id;
  int slide;
  _NearVisionState({this.id, this.slide});
  int counter = 0;
  int counter2 = 0;
  int slideIndex = 0;
  PageController controller;
  void _incrementCounter() {
    setState(() {
      counter = counter + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Image.asset('assets/icon/back_arrow.png'),
          onTap: () {
            Navigator.pop(context, true);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'NearVision',
          style: TextStyle(
            fontFamily: 'TT Commons DemiBold',
            fontSize: 18,
            color: const Color(0xff181d3d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 220,
                width: 334,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Can you read all the lines of text, including the smallest one?',
                style: TextStyle(
                    fontFamily: 'DemiBold',
                    color: colorFromHex('#181D3D'),
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
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
                      _incrementCounter();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AquityResult(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2,
                                  )));
                      print(counter);
                    },
                    child: Text(
                      'Yes',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AquityResult(
                                    id: id,
                                    counter: counter,
                                    counter2: counter2,
                                  )));
                      print(counter);
                    },
                    child: Text(
                      'No',
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
    );
  }
}
