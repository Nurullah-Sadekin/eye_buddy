import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'package:eye_buddy/util/colorconfig.dart';

class AwsumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hw = MediaQuery.of(context).size.width;
    var hp = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: Image.asset('assets/icon/back_arrow.png'),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: hp * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Awesome',
              style: TextStyle(fontSize: 36, color: ColorConfig.black),
            ),
          ),
          Container(
            height: 40,
            color: colorFromHex('#FEC62D'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('1 done 6 more to go')],
            ),
          ),
          Container(
            height: 200,
            width: hw * 0.9,
            child: Lottie.network(
                'https://assets8.lottiefiles.com/packages/lf20_LoU6vj.json'),
          ),
          SizedBox(
            height: hp * 0.2,
          ),
          Text(
            'NEXTUP : INFINITY MOVE',
            style: TextStyle(
                color: ColorConfig.black, fontSize: 16, fontFamily: 'TTCommon'),
          ),
          Stack(
            children: [
              SvgPicture.asset('assets/svg/right_arrow.svg'),
              Positioned(
                left: 80,
                top: 45,
                child: Text(
                  'Infinity Move',
                  style: TextStyle(
                      color: ColorConfig.black,
                      fontSize: 16,
                      fontFamily: 'TTCommon'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
