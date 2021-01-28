import 'package:eye_buddy/screen/signin/login.dart';
import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:eye_buddy/screen/signup/signup.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              height: hp * 0.07,
              minWidth: hw * 0.8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () async {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'This Is Registration',
                style: TextStyle(
                    fontFamily: 'DemiBold', color: colorFromHex('#181D3D')),
              ),
              color: colorFromHex('#FEC62D'),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              height: hp * 0.07,
              minWidth: hw * 0.8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'This Is Login',
                style: TextStyle(
                    fontFamily: 'DemiBold', color: colorFromHex('#181D3D')),
              ),
              color: colorFromHex('#FEC62D'),
            ),
          ],
        ),
      ),
    );
  }
}
