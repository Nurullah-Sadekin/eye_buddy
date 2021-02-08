import 'package:eye_buddy/screen/signup/signup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TextStyle style = TextStyle(
        fontFamily: 'TT Commons', fontSize: 14.0, color: Colors.yellow);
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;

    // ignore: unused_local_variable
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
                height: hp * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "User name or email",
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
                      keyboardType: TextInputType.emailAddress,
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
                      keyboardType: TextInputType.number,
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
                height: hp * 0.05,
              ),
              MaterialButton(
                height: hp * 0.07,
                minWidth: hw * 0.7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () async {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: _colorFromHex('#FEC62D')),
                ),
                color: _colorFromHex('#181D3D'),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        "Haven't Account?",
                        style: TextStyle(
                            fontFamily: 'DemiBold',
                            color: _colorFromHex('#FEC62D')),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    ),
                    Text(
                      "Forget password?",
                      style: TextStyle(
                          fontFamily: 'DemiBold',
                          color: _colorFromHex('#181D3D')),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: hp * 0.04,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "OR",
                    style: TextStyle(
                        fontFamily: 'DemiBold',
                        color: _colorFromHex('#181D3D'),
                        fontSize: 14),
                  ),
                  Text(
                    "Continue with",
                    style: TextStyle(
                        fontFamily: 'DemiBold',
                        color: _colorFromHex('#181D3D'),
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: hp * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/google.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/fb.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/twitter.png"),
                      )
                    ],
                  ),
                ],
              ),
              Container(child: Image.asset('assets/images/world.png')),
            ],
          ),
        ),
      ),
    );
  }
}
