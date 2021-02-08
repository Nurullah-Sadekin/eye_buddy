import 'package:eye_buddy/eye_excercies/all_day.dart';
import 'package:eye_buddy/model/eye_excercies_model.dart';
import 'package:eye_buddy/screen/homepage/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:eye_buddy/util/colorconfig.dart';

class CustomExcercies extends StatefulWidget {
  @override
  _CustomExcerciesState createState() => _CustomExcerciesState();
}

class _CustomExcerciesState extends State<CustomExcercies> {
  bool _value = false;

  int newId = 1;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element

    var hw = MediaQuery.of(context).size.width;
    var hp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CUSTOM EXCERCIES',
          // style: TextStyle(fontSize: 18, color: colorFromHex('#181D3D')),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: Image.asset('assets/icon/back_arrow.png'),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: hw,
                height: hp * 0.5,
                color: ColorConfig.yeallow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: SvgPicture.asset(
                          'assets/svg/${eyeExcerciesFiles[newId].animation}.svg'),
                    ),
                    SizedBox(height: 20),
                    Container(
                        height: 40,
                        width: 100,
                        child: Text(
                          eyeExcerciesFiles[newId].title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _value = !_value;
                      print(_value);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _value ? ColorConfig.black : ColorConfig.black,
                      ),
                      shape: BoxShape.circle,
                      color: _value ? ColorConfig.black : Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _value
                          ? Icon(
                              Icons.check,
                              size: 30.0,
                              color: ColorConfig.yeallow,
                            )
                          : Icon(
                              Icons.check,
                              size: 30.0,
                              color: ColorConfig.black,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: eyeExcerciesFiles.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    child: Card(
                      child: cs(eyeExcerciesFiles[i].title,
                          eyeExcerciesFiles[i].animation, hp, hw),
                    ),
                    onTap: () {
                      setState(() {
                        newId = eyeExcerciesFiles[i].id - 1;
                      });
                      print(newId);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(50.0),
        child: MaterialButton(
          height: 40,
          minWidth: 200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
            // print(counter);
          },
          child: Text(
            'Home',
            style: TextStyle(
                fontFamily: 'DemiBold', color: ColorConfig.black, fontSize: 16),
          ),
          color: ColorConfig.yeallow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget cs(String name, String assetname, double hp, double hw) {
  return Container(
    width: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 34.75,
          width: 32.33,
          child: SvgPicture.asset(
            'assets/svg/$assetname.svg',
          ),
        ),
        Container(
          height: 17,
        ),
        Text(
          name,
          style: TextStyle(
              fontFamily: 'TTCommons Demibold',
              fontSize: 9,
              color: Colors.black),
        ),
        // Container(
        //   height: 17,
        // )
      ],
    ),
  );
}

// Widget a(double hp, double hw) {
//   return cs("Split Images", "16", "Split Images", 39.99, 40.00, hp, hw);
// }
