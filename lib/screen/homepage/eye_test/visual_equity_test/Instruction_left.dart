import 'package:eye_buddy/screen/homepage/eye_test/AMD%20Test/amd_left.dart';
import 'package:eye_buddy/screen/homepage/eye_test/Astigmatism/astigmatism_left.dart';
import 'package:eye_buddy/screen/homepage/eye_test/Near%20Vision%20Test/nearvision.dart';
import 'package:eye_buddy/screen/homepage/eye_test/light_sensitivity_test/left/light_sensitivity_left1.dart';
import 'package:eye_buddy/screen/homepage/eye_test/visual_equity_test/left/visual_equity_test_left1.dart';
import 'package:eye_buddy/screen/instruction/Inatruction%2010.dart';
import 'package:eye_buddy/screen/instruction/Instruction%2013.dart';
import 'package:eye_buddy/screen/instruction/Instruction%2016.dart';
import 'package:eye_buddy/screen/instruction/Instruction%209.dart';
import 'package:eye_buddy/screen/instruction/Instruction101.dart';
import 'package:eye_buddy/screen/instruction/Instruction9-1.dart';
import 'package:eye_buddy/screen/instruction/Instruction9-2.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';

class VisualEquityIntroLeft extends StatefulWidget {
  int id;
  int slide;
  VisualEquityIntroLeft({this.id, this.slide});
  @override
  _VisualEquityIntroLeftState createState() =>
      _VisualEquityIntroLeftState(id: id, slide: slide);
}

class _VisualEquityIntroLeftState extends State<VisualEquityIntroLeft> {
  int id;
  int slide;
  _VisualEquityIntroLeftState({this.id, this.slide});
  int slideIndex = 0;
  PageController controller;
  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: 6.0,
      width: 6.0,
      // height: isCurrentPage ? 10.0 : 6.0,
      // width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        border: Border.all(color: colorFromHex('#181D3D')),
        color:
            isCurrentPage ? colorFromHex('#FEC62D') : colorFromHex('#FFFFFF'),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: id == 1
            ? Container(
                child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        slideIndex = index;
                      });
                    },
                    children: <Widget>[
                      Instruction9(),
                      Instruction13(),
                      Instruction16(),
                      Instruction91(),
                    ]),
              )
            : id == 2
                ? Container(
                    child: PageView(
                        controller: controller,
                        onPageChanged: (index) {
                          setState(() {
                            slideIndex = index;
                          });
                        },
                        children: <Widget>[
                          Instruction10(),
                          Instruction13(),
                          Instruction16(),
                          Instruction101(),
                        ]),
                  )
                : id == 3
                    ? Container(
                        child: PageView(
                            controller: controller,
                            onPageChanged: (index) {
                              setState(() {
                                slideIndex = index;
                              });
                            },
                            children: <Widget>[
                              Instruction10(),
                              Instruction13(),
                              Instruction16(),
                              Instruction92(),
                            ]),
                      )
                    : id == 4
                        ? Container(
                            child: PageView(
                                controller: controller,
                                onPageChanged: (index) {
                                  setState(() {
                                    slideIndex = index;
                                  });
                                },
                                children: <Widget>[
                                  Instruction10(),
                                  Instruction13(),
                                ]),
                          )
                        : id == 5
                            ? Container(
                                child: PageView(
                                    controller: controller,
                                    onPageChanged: (index) {
                                      setState(() {
                                        slideIndex = index;
                                      });
                                    },
                                    children: <Widget>[
                                      Instruction10(),
                                      Instruction13(),
                                    ]),
                              )
                            : id == 6
                                ? Container(
                                    child: PageView(
                                        controller: controller,
                                        onPageChanged: (index) {
                                          setState(() {
                                            slideIndex = index;
                                          });
                                        },
                                        children: <Widget>[
                                          Instruction10(),
                                          Instruction13(),
                                          Instruction16(),
                                        ]),
                                  )
                                : null,
        floatingActionButton: slideIndex != (slide - 1)
            ? Padding(
                padding: EdgeInsets.only(bottom: hp * 0.2),
                child: Container(
                  height: 40,
                  width: 50,
                  child: Row(
                    children: [
                      for (int i = 0; i < slide; i++)
                        i == slideIndex
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: MaterialButton(
                  height: 40,
                  minWidth: 220,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    id == 1
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisualEquityLeft1(
                                      id: id,
                                    )))
                        : id == 2
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AstigmatismLeft(
                                          id: id,
                                        )))
                            : id == 3
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LightSensitivityLeft1(
                                              id: id,
                                            )))
                                : id == 4
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NearVision(
                                                  id: id,
                                                )))
                                    : id == 5
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LightSensitivityLeft1(
                                                      id: id,
                                                    )))
                                        : id == 6
                                            ? Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AmdLeft(
                                                          id: id,
                                                        )))
                                            : null;
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                        fontFamily: 'DemiBold',
                        color: colorFromHex('#181D3D'),
                        fontSize: 16),
                  ),
                  color: colorFromHex("#FEC62D"),
                ),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomSheet:
      ),
    );
  }
}
