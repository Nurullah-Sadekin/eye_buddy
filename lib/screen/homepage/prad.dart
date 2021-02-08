import 'package:eye_buddy/screen/prad_story/prad_story.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:eye_buddy/resultpage/good.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eye_buddy/screen/buddy/buddy.dart';

class Prad extends StatefulWidget {
  @override
  _PradState createState() => _PradState();
}

class _PradState extends State<Prad> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ALL ABOUT PRAD',
          style: TextStyle(color: colorFromHex('#181D3D')),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: colorFromHex('#FFFFFF'),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/svg/three_eye.svg',
                height: hp * 0.5,
                width: hw,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        'Hi Friend, now I wouldn\'t recommend working out with a stranger, so here\'s a little bit about me'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PradStory()));
                        },
                        child: Image.asset(
                          "assets/images/right_arrow.png",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: hp * 0.03,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Buddy()));
                        },
                        child: Image.asset(
                          "assets/images/left_arrow.png",
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'What other say about prad :-',
                      style: TextStyle(
                          color: colorFromHex('#181D3D'),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SvgPicture.asset('assets/svg/three_star.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 121,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Container(
                                      height: 101,
                                      width: 221,
                                      child: SvgPicture.asset(
                                          "assets/svg/review.svg")),
                                  Positioned(
                                    bottom: 7,
                                    left: 88,
                                    child: Container(
                                      height: 46,
                                      width: 46,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://scontent.fdac5-1.fna.fbcdn.net/v/t1.0-9/72144622_2328693557347877_8205148613685280768_o.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=C1AHyWy6G9sAX_JH-3I&_nc_ht=scontent.fdac5-1.fna&oh=7c0082553abe71df9be40589c306ac06&oe=6036F020"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 121,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Container(
                                      height: 101,
                                      width: 221,
                                      child: SvgPicture.asset(
                                          "assets/svg/review.svg")),
                                  Positioned(
                                    bottom: 7,
                                    left: 88,
                                    child: Container(
                                      height: 46,
                                      width: 46,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://scontent.fdac5-1.fna.fbcdn.net/v/t1.0-9/72144622_2328693557347877_8205148613685280768_o.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=C1AHyWy6G9sAX_JH-3I&_nc_ht=scontent.fdac5-1.fna&oh=7c0082553abe71df9be40589c306ac06&oe=6036F020"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/quate.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/middle_right_arrow.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      // ListView(
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Text(
      //           'Hi Friend, now I wouldn\'t recommend working out with a stranger, so here\'s a little bit about me'),
      //     ),
      //     Center(
      //       child: Stack(
      //         children: <Widget>[
      //           Container(
      //             alignment: Alignment.center,
      //             child: Image.network(
      //               'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      //               height: 250,
      //               width: 200,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           Container(
      //               alignment: Alignment.center,
      //               child: Text(
      //                 'Text Message',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 22.0),
      //               )),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

//  MaterialButton(
//           // height: hp * 0.07,
//           // minWidth: hw * 0.7,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => GoodResult()),
//             );
//           },
//           child: Text(
//             'Result Page',
//             style: TextStyle(
//                 fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
//           ),
//           color: colorFromHex('#181D3D'),
//         ),
