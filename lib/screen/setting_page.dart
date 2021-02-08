import 'package:eye_buddy/screen/homepage/eye_test/eye_test.dart';
import 'package:eye_buddy/screen/homepage/home.dart';
import 'package:eye_buddy/screen/homepage/share.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _morning = false;
  bool _evening = false;
  @override
  Widget build(BuildContext context) {
    var hw = MediaQuery.of(context).size.width;
    var hp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SETTINGS',
          style: TextStyle(fontSize: 18, color: colorFromHex('#181D3D')),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: Image.asset('assets/icon/back_arrow.png'),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                _tab(
                  "Remind Morning Training",
                  CupertinoSwitch(
                    activeColor: ColorConfig.yeallow,
                    trackColor: colorFromHex('#B7AE97'),
                    value: _morning,
                    onChanged: (value) {
                      setState(() {
                        _morning = value;
                      });
                    },
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),
                _tab(
                  "Remind Evening Training",
                  CupertinoSwitch(
                    activeColor: ColorConfig.yeallow,
                    trackColor: colorFromHex('#B7AE97'),
                    value: _evening,
                    onChanged: (value) {
                      setState(() {
                        _evening = value;
                      });
                    },
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),
                _tab(
                  "Per Training Duration",
                  Container(
                    width: 50,
                    height: 30,
                    child: TextField(
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),
                _tab(
                    "Eye Test",
                    GestureDetector(
                      child: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EyeTest()));
                      },
                    )),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),
                // _tab("Profile",GestureDetector(child: ,
                // onTap: (){},)),
                _tab(
                    "Stats",
                    GestureDetector(
                      child: Icon(Icons.arrow_right),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Stats()));
                      },
                    )),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),
                _tab(
                    "Help & Support",
                    GestureDetector(
                      child: Icon(Icons.arrow_right),
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Stats()));
                      },
                    )),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),
                _tab(
                    "Take Our Survey",
                    GestureDetector(
                      child: Icon(Icons.arrow_right),
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Stats()));
                      },
                    )),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),

                _tab(
                    "Log out",
                    GestureDetector(
                      child: Icon(Icons.arrow_right),
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        FirebaseAuth.instance
                            .authStateChanges()
                            .listen((User user) {
                          if (user == null) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                            //Navigator.pop(context);
                            print('User is currently signed out!');
                          } else {
                            print('User is signed in!');
                          }
                        });
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Home()));
                      },
                    )),
                Divider(
                  thickness: 1,
                  color: ColorConfig.yeallow,
                  indent: 60,
                ),

                Padding(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    'Version 1.0.0',
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConfig.black,
                        letterSpacing: 2.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tab(String title, Widget _widget) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: ColorConfig.yeallow,
                  // ),
                  shape: BoxShape.circle,
                  color: ColorConfig.yeallow,
                ),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.comment_bank,
                      size: 20.0,
                      color: ColorConfig.black,
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(
                    color: ColorConfig.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        _widget,
      ],
    );
  }
}
