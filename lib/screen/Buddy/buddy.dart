import 'package:flutter/material.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/gestures.dart';

class Buddy extends StatefulWidget {
  @override
  _BuddyState createState() => _BuddyState();
}

class _BuddyState extends State<Buddy> {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(
        color: ColorConfig.black,
        fontSize: 11.0,
        fontFamily: 'TTCommon-DemiBold',
        fontWeight: FontWeight.bold);
    TextStyle linkStyle = TextStyle(
        color: ColorConfig.yeallow,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            child: Image.asset('assets/icon/back_arrow.png'),
            onTap: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'WORLDWIDE BUDDY',
          style: TextStyle(
            fontFamily: 'TT Commons DemiBold',
            fontSize: 18,
            color: const Color(0xff181d3d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.6, top: 10),
                child:
                    Text('increase your XP rating by doing daily excercises'),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 37,
                      color: colorFromHex('#181D3D'),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            child: Center(
                              child: Text(
                                "Rank",
                                style: TextStyle(
                                    color: colorFromHex('#FFFFFF'),
                                    fontSize: 11),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Leaderboard",
                                style: TextStyle(
                                    color: colorFromHex('#FFFFFF'),
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    _rank(),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: colorFromHex('#FFFFFF'),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 105,
                          color: colorFromHex('#FEC539'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'last updated 21 sec ago',
                        style: TextStyle(
                            color: colorFromHex('#181D3D'), fontSize: 8),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '#EBFRIENDS',
                          style:
                              TextStyle(color: ColorConfig.black, fontSize: 14),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _ebFriend(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _ebFriend(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _ebFriend(),
                          )
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: defaultStyle,
                        children: <TextSpan>[
                          TextSpan(text: 'Follow us on '),
                          TextSpan(
                              text: 'Instagram',
                              style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _ebFriend() {
  return Container(
    height: 115,
    width: 130,
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 115,
            width: 130,
            child: Center(
              child: Image.network(
                'https://media-eng.dhakatribune.com/uploads/2018/09/pm-file-photo-1-edited-focus-bangla-1537087662934.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 53,
            width: 130,
            child: Center(
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: SvgPicture.asset(
                      'assets/images/photo_frame.png',
                      fit: BoxFit.fitWidth,
                    ))),
          ),
        ),
      ],
    ),
  );
}

Widget _rank() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 37,
        // color: colorFromHex('#181D3D'),
        child: Row(
          children: [
            Container(
              color: colorFromHex('#FEC539'),
              width: 50,
              child: Center(
                child: Text(
                  "Rank",
                  style:
                      TextStyle(color: colorFromHex('#FFFFFF'), fontSize: 11),
                ),
              ),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                border: Border.all(color: colorFromHex('#FEC539')),
                color: colorFromHex('#FFFFFF'),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.gstatic.com/tv/thumb/persons/589228/589228_v9_ba.jpg'),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: colorFromHex('')),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Annika Galina",
                  style:
                      TextStyle(color: colorFromHex('#181D3D'), fontSize: 14),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.star,
                  color: colorFromHex('#FEC539'),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.star,
                  color: colorFromHex('#FEC539'),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            "520XP",
            style: TextStyle(
              color: colorFromHex('#181D3D'),
            ),
          ),
        ),
      ),
    ],
  );
}
