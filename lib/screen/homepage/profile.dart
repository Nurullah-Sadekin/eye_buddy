import 'package:eye_buddy/model/profile_bar_chart.dart';
import 'package:eye_buddy/screen/setting_page.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int xp = 2;
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: _colorFromHex('#FFFFFF'),
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 25.6, right: 25.6),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        height: 25,
                        width: 25,
                        child: Icon(
                          Icons.more_vert,
                          color: ColorConfig.black,
                          size: 40,
                        ),
                        // decoration: BoxDecoration(
                        //     color: _colorFromHex('#181D3D'),
                        //     borderRadius:
                        //         BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage()));
                    },
                  ),
                ],
              ),
              Center(
                child: Container(
                  color: Colors.black26,
                  height: 257.27,
                  width: 245.11,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 257.27,
                        width: 245.11,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/images/dp_bg.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 257.27,
                        width: 245.11,
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 42,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/60127268?s=400&u=566bdd753f61227e84790d9355db04e380c26f53&v=4'),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 145,
                        right: 90,
                        child: Container(
                          height: 25,
                          width: 25,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: _colorFromHex('#FEC62D'),
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                              color: _colorFromHex('#181D3D'),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 45,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: SvgPicture.asset(
                              "assets/images/badge.svg",
                            ),
                          )),
                    ),
                    Column(
                      children: [
                        Text(
                          "NURULLAH",
                          style: TextStyle(fontSize: 22),
                        ),
                        SvgPicture.asset("assets/images/rp.svg"),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Eye Issue',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: _colorFromHex('#FEC733'),
                        // Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Near Vision',
                        style: TextStyle(
                            color: _colorFromHex('#181D3D'),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: _colorFromHex('#FEC733'),
                        // Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Astigmatism',
                        style: TextStyle(
                            color: _colorFromHex('#181D3D'),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: _colorFromHex('#FEC733'),
                        // Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'AMD',
                        style: TextStyle(
                            color: _colorFromHex('#181D3D'),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                child: Text(
                  'Eye Glass chart',
                  style: TextStyle(
                      color: _colorFromHex('#181D3D'),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Container(child: SvgPicture.asset('assets/images/chart.svg')),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 36, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        'Edit your glass chart?',
                        style: TextStyle(
                            color: _colorFromHex('#FEC733'),
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              ProfileBar(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Milestones Achived',
                  style: TextStyle(
                      color: _colorFromHex('#181D3D'),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/rightway.svg'),
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/rightway.svg'),
                    Container(child: _milestone()),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 85,
                    child: Center(
                        child: SvgPicture.asset('assets/images/downway.svg')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/leftway.svg'),
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/leftway.svg'),
                    Container(child: _milestone()),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 85,
                    child: Center(
                        child: SvgPicture.asset('assets/images/downway.svg')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/rightway.svg'),
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/rightway.svg'),
                    Container(child: _milestone()),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 85,
                    child: Center(
                        child: SvgPicture.asset('assets/images/downway.svg')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                    ),
                    Container(child: _milestone()),
                    SvgPicture.asset('assets/images/leftway.svg'),
                    Container(child: _milestone()),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

Widget _milestone() {
  return Container(
    height: 68,
    width: 85,
    decoration: BoxDecoration(
        color: _colorFromHex('#181D3D'),
        border: Border.all(
          width: 5,
          color: _colorFromHex('#FEC62D'),
        ),
        // Color.fromRGBO(255, 0, 0, 0.0),
        borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: Column(
        children: [
          Text(
            "Contender",
            style: TextStyle(
                color: _colorFromHex('#FEC62D'),
                fontSize: 9,
                fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/images/level_logo/01.svg',
            height: 42.88,
            width: 42.05,
          ),
        ],
      ),
    ),
  );
}
