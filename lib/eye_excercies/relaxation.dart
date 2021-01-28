import 'package:flutter/material.dart';

import 'package:eye_buddy/eye_excercies/excercies_class/eye_excercies_item.dart';
import 'package:eye_buddy/eye_excercies/dry_eyes/closed_eye_move.dart';

class Relaxation extends StatelessWidget {
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
          'RELAXATION',
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
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: yinYangFocus(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: closedEyeMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: rollerCoaster(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: flashingShapes(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: waveMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: twoObjects(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: tibetanEyeChart(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: plaming(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: jumpingMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: bouncingBall(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: crossMove(hp, hw),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClosedEyeMove())),
                  child: leftRightMove(hp, hw),
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
