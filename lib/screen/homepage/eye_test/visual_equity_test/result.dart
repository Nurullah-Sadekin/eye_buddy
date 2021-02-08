import 'package:eye_buddy/resultpage/bad.dart';
import 'package:eye_buddy/resultpage/good.dart';
import 'package:eye_buddy/resultpage/ok.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eye_buddy/model/eye_test_model.dart';

class AquityResult extends StatefulWidget {
  int id; //1 =Visual_Acuity_Test,  2 = Astigmatism_Test, 3 = Light_Sensitivity_Test,
  int counter; //LeftEye
  int counter2; //RightEye
  AquityResult({this.id, this.counter, this.counter2});

  @override
  _AquityResultState createState() =>
      _AquityResultState(id: id, counter: counter, counter2: counter2);
}

class _AquityResultState extends State<AquityResult> {
  int id;
  int counter;
  int counter2;
  _AquityResultState({this.id, this.counter, this.counter2});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var mydatetime = DateTime.now();

    var resultValue = [
      {
        "dateTime": mydatetime,
        "leftEyeResult": counter,
        "rightEyeResult": counter2
      }
    ];

    var userId = FirebaseAuth.instance.currentUser.uid;

    String testType = testModels[id - 1].title.replaceAll(" ", "");
    print(id);
    print(testType);

    FirebaseFirestore.instance
        .collection(testType)
        .doc(userId)
        .get()
        .then((value) {
      if (value.data() == null) {
        FirebaseFirestore.instance
            .collection(testType)
            .doc(userId)
            .set({"EyeResult": resultValue}).then((value) {
          print("---------------- User ID & Result Added");
          resultValue = null;
        });
      } else {
        FirebaseFirestore.instance.collection(testType).doc(userId).update(
            {"EyeResult": FieldValue.arrayUnion(resultValue)}).then((value) {
          print("---------------- Result updated");
          resultValue = null;
        });
      }
    });

    // FirebaseFirestore.instance
    //     .collection("AstigmatismTest")
    //     .doc(userId)
    //     .get()
    //     .then((dateValue) async {
    //   print("yes, found");
    //   print(dateValue.data()["EyeResult"][0]["dateTime"]);
    //   await dateValue.data().forEach((key, value) {
    //     print(key);
    //     print(value[0]["dateTime"]);
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return counter + counter2 == 10
        ? GoodResult()
        : counter + counter2 >= 1 || 9 <= counter + counter2
            ? OK()
            : Bad();
  }
}
