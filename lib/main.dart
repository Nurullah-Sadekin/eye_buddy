import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:eye_buddy/screen/welcomescreen/animation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AnimatedSplashScreen(
          splash: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/logo.png'),
          )),
          nextScreen: AnimationScreen(),
          splashTransition: SplashTransition.slideTransition,
        )
        // home: MyHomePage(),
        );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icon/back_arrow.png'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Container(
                //   padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
              Container(
                //  padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Container(
            height: hp * 0.8,
            width: hw * 0.8,
            child: Lottie.asset(
              'assets/1.json',
            ),
          ),
          ElevatedButton(
            child: Text('Go for Second'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
          ),
        ]),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icon/back_arrow.png'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: hp * 0.8,
              width: hw * 0.8,
              child: Lottie.asset('assets/2.json'),
            ),
            ElevatedButton(
              child: Text('Go for third'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icon/back_arrow.png'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: hp * 0.8,
              width: hw * 0.8,
              child: Lottie.asset('assets/3.json'),
            ),
            ElevatedButton(
              child: Text('Go for first'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
