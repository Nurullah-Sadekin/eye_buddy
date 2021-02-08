import 'package:flutter/material.dart';

class TestModel {
  int id;
  String logo;
  String title;
  String desc;
  String popup;
  int slide;

  TestModel(
      {this.id, this.logo, this.title, this.desc, this.popup, this.slide});
}

List<TestModel> testModels = <TestModel>[
  TestModel(
      id: 1,
      logo: 'assets/svg/eye_test/visual_aquity_test.svg',
      title: 'Visual Acuity Test',
      desc:
          'aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
      popup: 'assets/images/popup/1.png',
      slide: 4),
  TestModel(
      id: 2,
      logo: 'assets/svg/eye_test/astigmatism.svg',
      title: 'Astigmatism Test',
      desc:
          'aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
      popup: 'assets/images/popup/2.png',
      slide: 4),
  TestModel(
      id: 3,
      logo: 'assets/svg/eye_test/Light Sensitivity Test_logo.svg',
      title: 'Light Sensitivity Test',
      desc:
          'aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
      popup: 'assets/images/popup/3.png',
      slide: 4),
  TestModel(
      id: 4,
      logo: 'assets/svg/eye_test/Near Vision Test_logo.svg',
      title: 'Near Vision Test',
      desc:
          'aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
      popup: 'assets/images/popup/4.png',
      slide: 2),
  TestModel(
      id: 5,
      logo: 'assets/svg/eye_test/Color Blind Test_logo.svg',
      title: 'Color Blind Test',
      desc:
          'aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
      popup: 'assets/images/popup/5.png',
      slide: 2),
  TestModel(
      id: 6,
      logo: 'assets/svg/eye_test/AMD Test_logo.svg',
      title: 'AMD Test',
      desc:
          'aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
      popup: 'assets/images/popup/6.png',
      slide: 3),
];
