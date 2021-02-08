import 'dart:io';
import 'package:eye_buddy/screen/signin/login.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:eye_buddy/screen/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:async';
import 'dart:math';
import '../homepage/home.dart';
//import 'package:eye_buddy/model/profile_bar_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:eye_buddy/screen/setting_page.dart';

class Profile extends StatefulWidget {
  // final String uemail;
  // final String uid;

  // Profile({Key key, @required this.uemail, this.uid}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // final String uemail;
  // final String uid;

  // _ProfileState(this.uemail, this.uid);
  File userPickedImage;
  bool pickedImageV = false;
  String userProfileImage;
  var uname = "loading..";
  List userEyeIssues = [];
  double totalXP = 0.0;
  double januaryXP = 0.0;
  double februaryXP = 0.0;
  double marchXP = 0.0;
  double aprilXP = 0.0;
  double mayXP = 0.0;
  double juneXP = 0.0;
  double julyXP = 0.0;
  double augustXP = 0.0;
  double septemberXP = 0.0;
  double octoberXP = 0.0;
  double novemberXP = 0.0;
  double decemberXP = 0.0;

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        leftTitles: SideTitles(showTitles: false),
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 9),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'JAN';
              case 1:
                return 'FEB';
              case 2:
                return 'MAR';
              case 3:
                return 'APR';
              case 4:
                return 'MAY';
              case 5:
                return 'JUN';
              case 6:
                return 'JUL';
              case 7:
                return 'AUG';
              case 8:
                return 'SEP';
              case 9:
                return 'OCT';
              case 10:
                return 'NOV';
              case 11:
                return 'DEC';
            }
            return '';
          },
          margin: 8,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, januaryXP / 1000),
            FlSpot(1, februaryXP / 1000),
            FlSpot(2, marchXP / 1000),
            FlSpot(3, aprilXP / 1000),
            FlSpot(4, mayXP / 1000),
            FlSpot(5, juneXP / 1000),
            FlSpot(6, julyXP / 1000),
            FlSpot(7, augustXP / 1000),
            FlSpot(8, septemberXP / 1000),
            FlSpot(9, octoberXP / 1000),
            FlSpot(10, novemberXP / 1000),
            FlSpot(11, decemberXP / 1000),
          ],
          isCurved: true,
          colors: [ColorConfig.yeallow],
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }

  Future pickedImage() async {
    try {
      PickedFile pickedFile =
          await ImagePicker().getImage(source: ImageSource.gallery);
      setState(() {
        pickedImageV = true;
        userPickedImage = File(pickedFile.path);
        print("-----------------${userPickedImage.path}");
      });
      uploadImage();
    } catch (e) {
      print(e);
    }
  }

  Future uploadImage() async {
    try {
      FirebaseStorage.instance
          .ref()
          .child('userProfileImage/${Random(25).nextInt(500).toString()}.jpg')
          .putFile(userPickedImage)
          .then((uimage) async {
        print("----------${await uimage.ref.getDownloadURL()}");
        print("----------${FirebaseAuth.instance.currentUser.uid.toString()}");
        FirebaseFirestore.instance
            .collection("UserInfo")
            .doc(FirebaseAuth.instance.currentUser.uid)
            .update({
          "userProfileImage": await uimage.ref.getDownloadURL()
        }).then((value) {
          setState(() {
            //userProfileImage = uimage.ref.getDownloadURL().toString();
          });
        });
      });
    } catch (e) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    User user = FirebaseAuth.instance.currentUser;
    var userID = user.uid;
    FirebaseFirestore.instance
        .collection("UserInfo")
        .doc(userID)
        .get()
        .then((value) {
      setState(() {
        this.uname = value.data()['userName'];
        print(this.uname);
        userEyeIssues = value.data()['userEyeIssues'];
        userProfileImage = value.data()['userProfileImage'];
        print("----------------------$userEyeIssues");
        // userEyeIssues.forEach((element) {
        //   print(element);
        // });
      });
      print("------------------ ${value.data()['userName']}");

      FirebaseFirestore.instance
          .collection("EyeExercisePoint")
          .where("userID", isEqualTo: userID)
          //.where("month", isEqualTo: 2)
          .get()
          .then((value) {
        value.docs.forEach((element) {
          print("++++++++++++++++++++++++++${element.data()['xpPoint']}");

          print("++++++++++++++++++++++ ${element.data()["month"]}");

          if (element.data()["month"] != null) {
            if (element.data()["month"] == 1) {
              januaryXP = januaryXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 2) {
              februaryXP = februaryXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 3) {
              marchXP = marchXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 4) {
              aprilXP = aprilXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 5) {
              mayXP = mayXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 6) {
              juneXP = juneXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 7) {
              julyXP = julyXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 8) {
              augustXP = augustXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 9) {
              septemberXP = septemberXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 10) {
              octoberXP = octoberXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 11) {
              novemberXP = novemberXP + element.data()["xpPoint"];
            }
            if (element.data()["month"] == 12) {
              decemberXP = decemberXP + element.data()["xpPoint"];
            }
          }
          totalXP = (totalXP + element.data()['xpPoint']);
        });
        print(totalXP);
        print(februaryXP);
      });

      setState(() {});
      // return value;
      // setState(() {
      //   this.userName = value.data()['userName'];
      // });
    });
  }

///////////// Scafflod Option
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return WillPopScope(
        // onWillPop: () async => false,
        // ignore: missing_return
        onWillPop: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Scaffold(
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
                                    backgroundImage: userProfileImage == null
                                        ? AssetImage(
                                            'assets/images/blank_profile.png')
                                        : pickedImageV
                                            ? FileImage(userPickedImage)
                                            : NetworkImage(userProfileImage),
                                    //: FileImage(userPickedImage)),
                                  ),
                                )),
                            Positioned(
                              top: 145,
                              right: 90,
                              child: InkWell(
                                onTap: () => pickedImage(),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                              ),
                            ),

                            /// Logout section
                            // Positioned(
                            //   top: 20,
                            //   right: 0,
                            //   child: IconButton(
                            //       icon: Icon(Icons.settings),
                            //       onPressed: () {
                            //   FirebaseAuth.instance.signOut();
                            //   FirebaseAuth.instance
                            //       .authStateChanges()
                            //       .listen((User user) {
                            //     if (user == null) {
                            //       Navigator.of(context).push(
                            //           MaterialPageRoute(
                            //               builder: (context) => Home()));
                            //       //Navigator.pop(context);
                            //       print('User is currently signed out!');
                            //     } else {
                            //       print('User is signed in!');
                            //     }
                            //   });
                            // }),
                            // ),
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
                                uname,
                                style: TextStyle(fontSize: 22),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: LinearPercentIndicator(
                                  width: 150.0,
                                  animation: true,
                                  animationDuration: 1000,
                                  lineHeight: 10.0,
                                  percent: totalXP <= 100
                                      ? totalXP / 100
                                      : totalXP <= 300 && totalXP > 100
                                          ? totalXP / 300
                                          : totalXP <= 4200 && totalXP > 300
                                              ? totalXP / 4200
                                              : totalXP <= 9000 &&
                                                      totalXP > 4200
                                                  ? totalXP / 9000
                                                  : totalXP <= 17000 &&
                                                          totalXP > 9000
                                                      ? totalXP / 17000
                                                      : totalXP <= 29000 &&
                                                              totalXP > 17000
                                                          ? totalXP / 29000
                                                          : totalXP <= 36000 &&
                                                                  totalXP >
                                                                      29000
                                                              ? totalXP / 36000
                                                              : totalXP <=
                                                                          40400 &&
                                                                      totalXP >
                                                                          36000
                                                                  ? totalXP /
                                                                      40400
                                                                  : totalXP <=
                                                                              54000 &&
                                                                          totalXP >
                                                                              40400
                                                                      ? totalXP /
                                                                          54000
                                                                      : totalXP <= 69000 &&
                                                                              totalXP >
                                                                                  54000
                                                                          ? totalXP /
                                                                              69000
                                                                          : totalXP <= 1000000 && totalXP > 69000
                                                                              ? totalXP / 1000000
                                                                              : 1000000,
                                  linearStrokeCap: LinearStrokeCap.butt,
                                  progressColor: ColorConfig.yeallow,
                                ),
                              ),
                            ],
                          ),
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    userEyeIssues == null
                        ? Text("no data")
                        : Container(
                            height: 50,
                            width: hw - 51.2,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: userEyeIssues.length,
                                itemBuilder: (BuildContext context, index) {
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: ColorConfig.yeallow,
                                              // Color.fromRGBO(255, 0, 0, 0.0),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              userEyeIssues[index],
                                              style: TextStyle(
                                                  color:
                                                      _colorFromHex('#181D3D'),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
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
                    Container(
                        child: SvgPicture.asset('assets/images/chart.svg')),
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
                    // ProfileBar(
                    //     totalXP: totalXP,
                    //     januaryXP: januaryXP,
                    //     februaryXP: februaryXP,
                    //     marchXP: marchXP,
                    //     aprilXP: aprilXP,
                    //     mayXP: mayXP,
                    //     juneXP: juneXP,
                    //     julyXP: julyXP,
                    //     augustXP: augustXP,
                    //     septemberXP: septemberXP,
                    //     octoberXP: octoberXP,
                    //     novemberXP: novemberXP,
                    //     decemberXP: decemberXP),
                    Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.70,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(18),
                                ),
                                color: Color(0xffFFFFFF)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 18.0, left: 12.0, top: 24, bottom: 12),
                              child: LineChart(
                                mainData(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

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
                          _milestone(),
                          SvgPicture.asset('assets/images/rightway.svg'),
                          _milestone(),
                          SvgPicture.asset('assets/images/rightway.svg'),
                          _milestone(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 85,
                          child: Center(
                              child: SvgPicture.asset(
                                  'assets/images/downway.svg')),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _milestone(),
                          SvgPicture.asset('assets/images/leftway.svg'),
                          _milestone(),
                          SvgPicture.asset('assets/images/leftway.svg'),
                          _milestone(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 85,
                          child: Center(
                              child: SvgPicture.asset(
                                  'assets/images/downway.svg')),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _milestone(),
                          SvgPicture.asset('assets/images/rightway.svg'),
                          _milestone(),
                          SvgPicture.asset('assets/images/rightway.svg'),
                          _milestone(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 85,
                          child: Center(
                              child: SvgPicture.asset(
                                  'assets/images/downway.svg')),
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
                          _milestone(),
                          SvgPicture.asset('assets/images/leftway.svg'),
                          _milestone(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
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
