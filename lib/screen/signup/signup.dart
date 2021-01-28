import 'package:eye_buddy/screen/signin/login.dart';
import 'package:flutter/material.dart';
import 'package:eye_buddy/screen/signup/gender.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        fontFamily: 'TT Commons', fontSize: 14.0, color: Colors.yellow);
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;

    final signUpButon = MaterialButton(
      height: hp * 0.05,
      minWidth: hw * 0.7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: null,
      //  () {
      //   Route route = MaterialPageRoute(builder: (context) => CreateidScreen());
      //   Navigator.push(context, route);
      // },
      child: Text(
        'Sign Up',
        // style: GoogleFonts.roboto(fontSize: 24, color: Colors.white),
      ),
      color: Colors.orange,
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: hp * 0.01,
              ),
              Center(
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: hp * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "User name",
                      style: TextStyle(
                        fontFamily: 'TTCommons',
                        fontSize: 18,
                        color: _colorFromHex("#FEC62D"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        // contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: 'TTCommons',
                        fontSize: 18,
                        color: _colorFromHex("#FEC62D"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        // contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: 'TTCommons',
                        fontSize: 18,
                        color: _colorFromHex("#FEC62D"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        // contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontFamily: 'TTCommons',
                        fontSize: 18,
                        color: _colorFromHex("#FEC62D"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        // contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hp * 0.03,
              ),
              MaterialButton(
                height: hp * 0.07,
                minWidth: hw * 0.7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () async {
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GenderPage()));
                },
                child: Text(
                  'Registration',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: _colorFromHex('#FEC62D')),
                ),
                color: _colorFromHex('#181D3D'),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                        child: Text(
                          "Have Account?",
                          style: TextStyle(
                              fontFamily: 'DemiBold',
                              color: _colorFromHex('#FEC62D')),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        })
                  ],
                ),
              ),
              SizedBox(
                height: hp * 0.01,
              ),
              Container(
                child: Image.asset("assets/images/shakehand.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
