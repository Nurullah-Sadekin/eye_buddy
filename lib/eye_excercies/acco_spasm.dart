import 'package:flutter/material.dart';
import 'package:eye_buddy/eye_excercies/excercies_class/eye_excercies_item.dart';
import 'package:eye_buddy/eye_excercies/dry_eyes/closed_eye_move.dart';

class AccoSpasm extends StatefulWidget {
  String exName;
  AccoSpasm({this.exName});
  int id;
  @override
  _AccoSpasmState createState() => _AccoSpasmState(exName: exName);
}

class _AccoSpasmState extends State<AccoSpasm> {
  String exName;
  _AccoSpasmState({this.exName});
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
          'ACCOMODATION SPASM',
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
                                exName: exName,
                              ))),
                  child: splitimages(hp, hw),
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
                                id: 8,
                                exName: exName,
                              ))),
                  child: gaborpatches(hp, hw),
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
                                id: 13,
                                exName: exName,
                              ))),
                  child: rollerCoaster(hp, hw),
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
                                id: 34,
                                exName: exName,
                              ))),
                  child: lightFlicker(hp, hw),
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
                                id: 16,
                                exName: exName,
                              ))),
                  child: waveMove(hp, hw),
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
