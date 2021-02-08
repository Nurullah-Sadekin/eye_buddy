import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:eye_buddy/screen/signin/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eye_buddy/screen/homepage/profile.dart';
import 'package:eye_buddy/screen/homepage/share.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'discover.dart';
import 'prad.dart';
import 'profile.dart';
import 'train.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [];
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User user) {
      if (user == null) {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => Auth()));
        setState(() {
          this.screens = [Discover(), Train(), Prad(), Stats(), LoginScreen()];
        });

        print('User is currently signed out!');
      } else {
        setState(() {
          this.screens = [Discover(), Train(), Prad(), Stats(), Profile()];
        });

        print('User is signed in!');
      }
    });
  }

  // Properties & Variables needed

  int selectedIndex = 0;
  int currentTab = 0; // to keep track of active tab index

  // to store nested tabs
// Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      // floatingActionButton: GestureDetector(
      //   onTap: () {
      //     // Do Something
      //   },
      //   child: Container(
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage('assets/icon/eye.png'),
      //       ),
      //       // borderRadius: BorderRadius.circular(0.50),
      //     ),
      //     width: 110,
      //     height: 94.68,
      //   ),
      // ),
      //  FloatingActionButton(
      //   elevation: 0.0,
      //   child: Image.asset("assets/icon/eye.png"),
      //   backgroundColor: Colors.transparent,
      //   onPressed: () {},
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: colorFromHex('#181D3D'),
          color: colorFromHex('#FEC62D'),
          activeColor: colorFromHex('#FEC62D'),
          style: TabStyle.react,
          items: [
            TabItem(
              icon: Icons.search,
              title: 'Discover',
            ),
            TabItem(
                icon: SvgPicture.asset('assets/icon/weightlifting.svg'),
                title: 'Train'),
            TabItem(
              icon: Image(
                height: 100,
                width: 100,
                image: AssetImage('assets/icon/eye.png'),
              ),
            ),
            TabItem(
                icon: SvgPicture.asset('assets/icon/bar-chart.svg'),
                title: 'Stats'),
            TabItem(
                icon: Image(
                  image: AssetImage('assets/icon/user.png'),
                ),
                title: 'Profile'),
          ],
          // initialActiveIndex: 1 /*optional*/,
          onTap: onItemTapped),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
