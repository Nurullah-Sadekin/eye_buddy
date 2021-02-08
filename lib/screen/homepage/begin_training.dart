import 'package:eye_buddy/eye_excercies/dry_eyes/closed_eye_move.dart';
import 'package:eye_buddy/model/day_night_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BeginTraining extends StatefulWidget {
  int count;
  BeginTraining({this.count});
  @override
  _BeginTrainingState createState() => _BeginTrainingState(count: count);
}

class _BeginTrainingState extends State<BeginTraining> {
  int count;
  _BeginTrainingState({this.count});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,

        itemCount: count == 2 ? 10 : 5,
        // ignore: missing_return
        itemBuilder: (context, i) {
          if (count == 2) {
            return GestureDetector(
              child: _excercies(day[i].title, day[i].logo),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ClosedEyeMove(id: day[i].excerCiesId)));
              },
            );
          }
          if (count == 1) {
            return GestureDetector(
              child: _excercies(day[i + 10].title, day[i + 10].logo),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ClosedEyeMove(id: day[i].excerCiesId)));
              },
            );
          }
        },
      ),
    );
  }

  Widget _excercies(name, logo) {
    return Container(
      height: 100,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x181D3D).withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 40,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: SvgPicture.asset(
                    'assets/svg/$logo.svg',
                    height: 37.31,
                    width: 37.31,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'TT Commons',
                      fontSize: 14,
                      color: Colors.black),
                ),
                Container(
                  height: 20,
                )
              ],
            )),
      ),
    );
  }
}
