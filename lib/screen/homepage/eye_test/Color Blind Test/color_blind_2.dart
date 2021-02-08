import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/result.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Colorblind2 extends StatefulWidget {
  int id;
  int slide;
  Colorblind2({this.id, this.slide});
  @override
  _Colorblind2State createState() => _Colorblind2State(id: id, slide: slide);
}

class _Colorblind2State extends State<Colorblind2> {
  int id;
  int slide;
  _Colorblind2State({this.id, this.slide});
  final _text = TextEditingController();
  bool _validate = true;

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
  void dispose() {
    _text.dispose();
    super.dispose();
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
          'Colorblind2',
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
                child: Image.asset('assets/vision1.png'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'I see',
                    style: TextStyle(color: ColorConfig.black, fontSize: 16),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _text,
                    decoration: InputDecoration(
                      labelText: 'Insert Number Here',
                      errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    height: 40,
                    minWidth: 150,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      setState(() {
                        _text.text.isEmpty
                            ? _validate = true
                            : _validate = false;
                      });
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
                      'Confirm',
                      style: TextStyle(
                          fontFamily: 'DemiBold',
                          color: ColorConfig.black,
                          fontSize: 16),
                    ),
                    color: ColorConfig.yeallow,
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
