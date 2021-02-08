import 'package:flutter/material.dart';
import 'package:eye_buddy/eye_excercies/excercies_class/eye_excercies_item.dart';
import 'package:eye_buddy/eye_excercies/dry_eyes/closed_eye_move.dart';

class AllDay extends StatefulWidget {
  String exName;
  AllDay({this.exName});
  int id;
  @override
  _AllDayState createState() => _AllDayState(exName: exName);
}

class _AllDayState extends State<AllDay> {
  String exName;
  _AllDayState({this.exName});
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
          'All Day',
          style: TextStyle(
            fontFamily: 'TT Commons DemiBold',
            fontSize: 18,
            color: const Color(0xff181d3d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: GridView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 1,
                              ))),
                  child: splitimages(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 3,
                                exName: exName,
                              ))),
                  child: focusshift(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 23,
                                exName: exName,
                              ))),
                  child: diagonalMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 24,
                                exName: exName,
                              ))),
                  child: ellipsisMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 19,
                                exName: exName,
                              ))),
                  child: jumpingMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 20,
                                exName: exName,
                              ))),
                  child: bouncingBall(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 18,
                                exName: exName,
                              ))),
                  child: crossMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 16,
                                exName: exName,
                              ))),
                  child: waveMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 26,
                                exName: exName,
                              ))),
                  child: spiralMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 25,
                                exName: exName,
                              ))),
                  child: flowerMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 27,
                                exName: exName,
                              ))),
                  child: springMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 28,
                                exName: exName,
                              ))),
                  child: trajectoryMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 30,
                                exName: exName,
                              ))),
                  child: infinityMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 29,
                                exName: exName,
                              ))),
                  child: butterflyMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 38,
                                exName: exName,
                              ))),
                  child: circleFocus(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 32,
                                exName: exName,
                              ))),
                  child: ractangularMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 4,
                                exName: exName,
                              ))),
                  child: colorPath(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 10,
                                exName: exName,
                              ))),
                  child: colorStripes(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 11,
                                exName: exName,
                              ))),
                  child: trafficLigths(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 9,
                                exName: exName,
                              ))),
                  child: growingGabor(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 5,
                                exName: exName,
                              ))),
                  child: blurrygabor(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 7,
                                exName: exName,
                              ))),
                  child: splittinggabor(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 6,
                                exName: exName,
                              ))),
                  child: gaborblinking(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 15,
                                exName: exName,
                              ))),
                  child: flashingShapes(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 22,
                                exName: exName,
                              ))),
                  child: chessboardFlicker(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 31,
                                exName: exName,
                              ))),
                  child: circleMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 33,
                                exName: exName,
                              ))),
                  child: patternFocus(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 36,
                                exName: exName,
                              ))),
                  child: leftRightMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 39,
                                exName: exName,
                              ))),
                  child: closingTight(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 40,
                                exName: exName,
                              ))),
                  child: closedEyeMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 41,
                                exName: exName,
                              ))),
                  child: plaming(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 42,
                                exName: exName,
                              ))),
                  child: twoObjects(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 43,
                                exName: exName,
                              ))),
                  child: tibetanEyeChart(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 35,
                                exName: exName,
                              ))),
                  child: randomMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 17,
                                exName: exName,
                              ))),
                  child: lightFlare(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 2,
                                exName: exName,
                              ))),
                  child: convergence(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 13,
                                exName: exName,
                              ))),
                  child: yinYangFocus(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 12,
                                exName: exName,
                              ))),
                  child: yinYangFlicker(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClosedEyeMove(
                                id: 14,
                                exName: exName,
                              ))),
                  child: rollerCoaster(hp, hw),
                ),
              ],
            ),
          )
          // Container(
          //     padding: EdgeInsets.only(left: 20, right: 20, top: 27),
          //     child: Expanded(child: AllProducts())
        ],
      ),
    );
  }
}
