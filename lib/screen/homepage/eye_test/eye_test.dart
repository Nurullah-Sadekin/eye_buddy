import 'package:eye_buddy/model/eye_test_model.dart';
import 'package:eye_buddy/screen/homepage/eye_test/eye_test_popup.dart';
// import 'package:eye_buddy/screen/homepage/eye_test/low_vision.dart';
// import 'package:eye_buddy/screen/homepage/eye_test/near_vision_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eye_buddy/util/colorconfig.dart';

class EyeTest extends StatefulWidget {
  @override
  _EyeTestState createState() => _EyeTestState();
}

class _EyeTestState extends State<EyeTest> {
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
        centerTitle: true,
        title: Text(
          'EYE TEST',
          style: TextStyle(
            fontFamily: 'TT Commons DemiBold',
            fontSize: 18,
            color: const Color(0xff181d3d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: ListView(children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          width: hw * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Text(
                                      "TEST YOUR",
                                      style: TextStyle(
                                          fontFamily: 'TTCommons',
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: colorFromHex('#181D3D')),
                                    ),
                                    Text(
                                      "VISION",
                                      style: TextStyle(
                                        fontFamily: 'TTCommons',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: colorFromHex('#FEC62D'),
                                      ),
                                    ),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum',
                                  style: TextStyle(
                                      fontFamily: 'TTCommons',
                                      fontSize: 8,
                                      //fontWeight: FontWeight.w600,
                                      color: colorFromHex('#181D3D')),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/superboy.png')
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
                        child: Text(
                          'All Tests',
                          style: TextStyle(
                              fontFamily: 'TTCommons',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: colorFromHex('#181D3D')),
                        )),
                  ],
                ),
                Container(
                  height: hp * 0.55,
                  width: hw - 46,
                  child: ListView(
                    children: List.generate(testModels.length, (index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EyeTestPopup(
                                          testModels[index].id,
                                          testModels[index].popup,
                                          testModels[index].slide,
                                        )));
                          },
                          child: _test(
                            hw,
                            testModels[index].title,
                            testModels[index].logo,
                          ));
                    }),
                  ),
                ),
              ]),
        ]),
      ),
    );
  }

  Widget _test(double hw, String name, String logo) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: colorFromHex('#FFFFFF')),
          child: Column(
            children: [
              Container(
                height: 112,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          height: 55,
                          width: 60,
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: SvgPicture.asset(
                              logo,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10),
                            child: Text(
                              name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: colorFromHex('#181D3D'),
                              ),
                            ),
                          ),
                          Container(
                            width: hw * 0.5,
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: colorFromHex('#181D3D'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: colorFromHex('#FEC62D'),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                width: hw,
                height: 38,
                child: Center(
                  child: Text(
                    'Start Test',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colorFromHex('#181D3D')),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
