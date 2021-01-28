import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// var hp = MediaQuery.of(context).size.height;
// var hw = MediaQuery.of(context).size.width;
Widget myEx(String name, String fontsize, String assetname, double height,
    double width, double hp, double hw) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x181D3D).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 40,
            offset: Offset(0, 3),
          )
        ],
      ),
      height: hp * 0.4,
      width: hw * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height,
            width: width,
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
                fontSize: 16,
                color: Colors.black),
          ),
          Container(
            height: 17,
          )
        ],
      ),
    ),
  );
}

Widget splitimages(double hp, double hw) {
  return myEx("Split Images", "16", "Split Images", 59.99, 60.00, hp, hw);
}

Widget convergence(double hp, double hw) {
  return myEx("Convergence", "16", "Convergence", 59.99, 64.00, hp, hw);
}

Widget focusshift(double hp, double hw) {
  return myEx("Focus Shift", "16", "Focus Shift", 62, 61.00, hp, hw);
}

Widget gaborpatches(double hp, double hw) {
  return myEx("Gabor Patches", "16", "Gabor Patches", 59.99, 60.00, hp, hw);
}

Widget blurrygabor(double hp, double hw) {
  return myEx("Blurry Gabor", "16", "Blurry Gabor Green", 59.99, 60.00, hp, hw);
}

Widget gaborblinking(double hp, double hw) {
  return myEx("Gabor Blinking", "16", "Gabor Blinking", 59.99, 60.00, hp, hw);
}

Widget splittinggabor(double hp, double hw) {
  return myEx("Splitting Gabor", "16", "Splitting Gabor", 59.99, 60.00, hp, hw);
}

Widget growingGabor(double hp, double hw) {
  return myEx("Growing Gabor", "16", "Growing Gabor", 59.99, 60.00, hp, hw);
}

Widget yinYangFocus(double hp, double hw) {
  return myEx("Yin Yang Focus", "16", "Yin Yang Focus", 59.99, 60.00, hp, hw);
}

Widget yinYangFlicker(double hp, double hw) {
  return myEx(
      "Yin Yang Flicker", "16", "Yin Yang Flicker", 59.99, 60.00, hp, hw);
}

Widget rollerCoaster(double hp, double hw) {
  return myEx("Roller Coaster", "16", "Roller Coaster", 59.99, 60.00, hp, hw);
}

Widget flashingShapes(double hp, double hw) {
  return myEx("Flashing Shapes", "16", "Flashing Shapes", 59.99, 60.00, hp, hw);
}

Widget patternFocus(double hp, double hw) {
  return myEx("Pattern Focus", "16", "Pattern Focus", 59.99, 60.00, hp, hw);
}

Widget lightFlicker(double hp, double hw) {
  return myEx("Light Flicker", "16", "Light Flicker", 59.99, 60.00, hp, hw);
}

Widget circleFocus(double hp, double hw) {
  return myEx("Circle Focus", "16", "Circle Focus", 59.99, 60.00, hp, hw);
}

Widget twoObjects(double hp, double hw) {
  return myEx("Two Objects", "16", "Two Objects", 59.99, 60.00, hp, hw);
}

Widget jumpingMove(double hp, double hw) {
  return myEx("Jumping Move", "16", "Jumping Move", 59.99, 60.00, hp, hw);
}

Widget bouncingBall(double hp, double hw) {
  return myEx("Bouncing Ball", "16", "Bouncing Ball", 59.99, 60.00, hp, hw);
}

Widget diagonalMove(double hp, double hw) {
  return myEx("Diagonal Move", "16", "Diagonal Move", 59.99, 60.00, hp, hw);
}

Widget waveMove(double hp, double hw) {
  return myEx("Wave Move", "16", "Wave Move", 59.99, 60.00, hp, hw);
}

Widget closedEyeMove(double hp, double hw) {
  return myEx("Closed Eye Move", "16", "dry_eye/closed_eye_moved", 59.99, 60.00,
      hp, hw);
}

Widget plaming(double hp, double hw) {
  return myEx("Plaming", "16", "dry_eye/clap", 59.99, 60.00, hp, hw);
}

Widget closingTight(double hp, double hw) {
  return myEx(
      "Closing Tight", "16", "dry_eye/Closing Tight", 59.99, 60.00, hp, hw);
}

Widget blinking(double hp, double hw) {
  return myEx("Blinking", "16", "dry_eye/Blinking", 59.99, 60.00, hp, hw);
}

Widget dryEye(double hp, double hw) {
  return myEx("Dry Eye", "16", "dry_eye/Wave Move", 59.99, 60.00, hp, hw);
}

Widget tibetanEyeChart(double hp, double hw) {
  return myEx(
      "Tibetan Eye Chart", "16", "Tibetan Eye Chart", 59.99, 60.00, hp, hw);
}

Widget crossMove(double hp, double hw) {
  return myEx("Cross Move", "16", "Cross Move", 59.99, 60.00, hp, hw);
}

Widget leftRightMove(double hp, double hw) {
  return myEx("Left Right Move", "16", "Left Right Move", 59.99, 60.00, hp, hw);
}

Widget ellipsisMove(double hp, double hw) {
  return myEx("Ellipsis Move", "16", "Ellipsis Move", 59.99, 60.00, hp, hw);
}

Widget spiralMove(double hp, double hw) {
  return myEx("Spiral Move", "16", "Spiral Move", 59.99, 60.00, hp, hw);
}

Widget flowerMove(double hp, double hw) {
  return myEx("Flower Move", "16", "Flower Move", 59.99, 60.00, hp, hw);
}

Widget springMove(double hp, double hw) {
  return myEx("Spring Move", "16", "Spring Move", 59.99, 60.00, hp, hw);
}

Widget trajectoryMove(double hp, double hw) {
  return myEx("Trajectory Move", "16", "Trajectory Move", 59.99, 60.00, hp, hw);
}

Widget infinityMove(double hp, double hw) {
  return myEx("Infinity Move", "16", "Infinity Move", 59.99, 60.00, hp, hw);
}

Widget butterflyMove(double hp, double hw) {
  return myEx("Butterfly Move", "16", "Butterfly Move", 59.99, 60.00, hp, hw);
}

Widget ractangularMove(double hp, double hw) {
  return myEx(
      "Ractangular Move", "16", "Ractangular Move", 59.99, 60.00, hp, hw);
}

Widget colorPath(double hp, double hw) {
  return myEx("Color Path", "16", "Color Path", 59.99, 60.00, hp, hw);
}

Widget colorStripes(double hp, double hw) {
  return myEx("Color Stripes", "16", "Color Stripes", 59.99, 60.00, hp, hw);
}

Widget trafficLigths(double hp, double hw) {
  return myEx("Traffic Lights", "16", "Traffic Lights", 59.99, 60.00, hp, hw);
}

Widget chessboardFlicker(double hp, double hw) {
  return myEx(
      "Chessboard Flicker", "16", "Chessboard Flicker", 59.99, 60.00, hp, hw);
}

Widget circleMove(double hp, double hw) {
  return myEx("Circle Move", "16", "Circle Move", 59.99, 60.00, hp, hw);
}

Widget randomMove(double hp, double hw) {
  return myEx("Random Move", "16", "Random Move", 59.99, 60.00, hp, hw);
}

Widget lightFlare(double hp, double hw) {
  return myEx("Light Flare", "16", "Light Flare", 59.99, 60.00, hp, hw);
}

Widget kaleidoscope(double hp, double hw) {
  return myEx("Kaleidoscope", "16", "Kaleidoscope", 59.99, 60.00, hp, hw);
}
