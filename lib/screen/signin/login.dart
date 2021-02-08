import 'package:eye_buddy/screen/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../homepage/profile.dart';
import '../homepage/home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:email_validator/email_validator.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  //+++++++++++++++++++++++ BackEnd Code +++++++++++++++++++++++++++++
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Map<String, dynamic> _userData;
  AccessToken _accessToken;
  bool _checking = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String email;

  String passsword;

  String uemail;

  String uid;

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  Future signInWithGoogle() async {
    print("]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]");
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    // final GoogleAuthCredential credential = GoogleAuthProvider.getCredential()

    // Once signed in, return the UserCredential
    var result = await FirebaseAuth.instance.signInWithCredential(credential);
    var user = result.user;
    print("----------------------${user.displayName}");
    if (user != null) {
      print("----------------------${user.displayName}");
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      firebaseFirestore.collection("UserInfo").doc(user.uid).set(
          {'userName': user.displayName, 'userProfileImage': ""}).then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));
      });
    }
  }

  Future<void> signInWithFacebook() async {
    try {
      // show a circular progress indicator
      // setState(() {
      //   _checking = true;
      // });
      _accessToken = await FacebookAuth.instance
          .login(); // by the fault we request the email and the public profile
      print("accessToken=========================");
      // loginBehavior is only supported for Android devices, for ios it will be ignored
      // _accessToken = await FacebookAuth.instance.login(
      //   permissions: ['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
      //   loginBehavior:
      //       LoginBehavior.DIALOG_ONLY, // (only android) show an authentication dialog instead of redirecting to facebook app
      // );
      //_printCredentials();
      // get the user data
      // by default we get the userId, email,name and picture

      final FacebookAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(_accessToken.token);
      FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);

      final userData = await FacebookAuth.instance.getUserData();

      // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
      _userData = userData;
      print("====================${_userData['name']}");

      if (FirebaseAuth.instance.currentUser.uid != null) {
        FirebaseFirestore.instance
            .collection("UserInfo")
            .doc(FirebaseAuth.instance.currentUser.uid)
            .set({'userName': _userData['name'], 'userProfileImage': ""}).then(
                (value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profile()));
        });
      }

      print("====================${_userData['email']}");
    } on FacebookAuthException catch (e) {
      // if the facebook login fails
      print(e.message); // print the error message in console
      // check the error type
      switch (e.errorCode) {
        case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
          print("You have a previous login operation in progress");
          break;
        case FacebookAuthErrorCode.CANCELLED:
          print("login cancelled");
          break;
        case FacebookAuthErrorCode.FAILED:
          print("login failed");
          break;
      }
    } catch (e, s) {
      // print in the logs the unknown errors
      print(e);
      print(s);
    } finally {
      // update the view
      // setState(() {
      //   _checking = false;
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    //+++++++++++++++++++++++ BackEnd Code +++++++++++++++++++++++++++++

    signIn() async {
      email = emailController.text;
      passsword = passwordController.text;
      if (!email.contains("@") || !email.contains(".") || email.isEmpty) {
        _scaffoldKey.currentState.showSnackBar(
            SnackBar(content: Text("Please Enter a Valid Email!")));
      } else if (passsword.isEmpty) {
        _scaffoldKey.currentState.showSnackBar(
            SnackBar(content: Text("Please Enter Your Password!")));
      } else {
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: passsword);
          if (userCredential != null) {
            uemail = userCredential.user.email;
            uid = userCredential.user.uid;
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Profile()));
            emailController.clear();
            passwordController.clear();
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user found for that email!');
            _scaffoldKey.currentState.showSnackBar(
                SnackBar(content: Text("No user found for that email!")));
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
            _scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text("Wrong password provided for that user!")));
          }
        }
      }
    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
      key: _scaffoldKey,
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
                      controller: emailController,
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
                      controller: passwordController,
                      autofocus: true,
                      obscureText: true,
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
                onPressed: () {
                  signIn();
                },
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
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/google.png"),
                        ),
                        onTap: () {
                          signInWithGoogle();
                        },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/fb.png"),
                        ),
                        onTap: () {
                          signInWithFacebook();
                        },
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
