import 'package:flutter/material.dart';

class Day {
  int id;
  String logo;
  String title;
  int excerCiesId;

  Day({this.id, this.logo, this.title, this.excerCiesId});
}

List<Day> day = <Day>[
  Day(id: 1, logo: 'Focus Shift', title: 'Focus Shift', excerCiesId: 3),
  Day(id: 2, logo: 'Gabor Blinking', title: 'Gabor Blinking', excerCiesId: 6),
  Day(id: 3, logo: 'Blurry Gabor', title: 'Blurry Gabor', excerCiesId: 5),
  Day(id: 4, logo: 'Splitting Gabor', title: 'Splitting Gabor', excerCiesId: 7),
  Day(id: 5, logo: 'Gabor Patches', title: 'Gabor Patches', excerCiesId: 8),
  Day(id: 6, logo: 'Growing Gabor', title: 'Growing Gabor', excerCiesId: 9),
  Day(
      id: 7,
      logo: 'Left Right Move',
      title: 'Left Right Move',
      excerCiesId: 36),
  Day(id: 8, logo: 'Circle Move', title: 'Circle Move', excerCiesId: 31),
  Day(id: 9, logo: 'Cross Move', title: 'Cross Move', excerCiesId: 18),
  Day(id: 10, logo: 'Jumping Move', title: 'Jumping Move', excerCiesId: 19),
  Day(id: 11, logo: 'Wave Move', title: 'Wave Move', excerCiesId: 16),
  Day(id: 12, logo: 'dry_eye/clap', title: 'Plamming', excerCiesId: 41),
  Day(
      id: 13,
      logo: 'dry_eye/closed_eye_moved',
      title: 'Closed Eye Move',
      excerCiesId: 40),
  Day(id: 14, logo: 'Two Objects', title: 'Two Objects', excerCiesId: 42),
  Day(id: 15, logo: 'Pattern Focus', title: 'Pattern Focus', excerCiesId: 33),

  // DayNight(id: 5, logo: '', title: 'Blurry gs
  // DayNight(id: 11, logo: '', title: 'Traffic lights'),
  // DayNight(id: 12, logo: '', title: 'Yin yang flicker'),
  // DayNight(id: 13, logo: '', title: 'Yin yang focus'),
  // DayNight(id: 14, logo: '', title: 'Roller coaster'), //nai
  // DayNight(id: 15, logo: '', title: 'Flashing shapes'),
  // DayNight(id: 16, logo: '', title: 'Wave move'),
  // DayNight(id: 17, logo: '', title: 'Light flare'),
  // DayNight(id: 18, logo: '', title: 'Cross move'),
  // DayNight(id: 19, logo: '', title: 'Jumping move'),
  // DayNight(id: 20, logo: '', title: 'Bouncing ball'),
  // DayNight(id: 21, logo: '', title: 'Growing pattern'),
  // DayNight(id: 22, logo: '', title: 'Chessboard flicker'),
  // DayNight(id: 23, logo: '', title: 'Diagonal move'),
  // DayNight(id: 24, logo: '', title: 'Ellipsis move'),
  // DayNight(id: 25, logo: '', title: 'Flower move'),
  // DayNight(id: 26, logo: '', title: 'Spiral move'),
  // DayNight(id: 27, logo: '', title: 'Spring move'),
  // DayNight(id: 28, logo: '', title: 'Trajectory Move'),
  // DayNight(id: 29, logo: '', title: 'Butterfly move'),
  // DayNight(id: 30, logo: '', title: 'Infinity move'),
  // DayNight(id: 31, logo: '', title: 'Circle move'),
  // DayNight(id: 32, logo: '', title: 'Ractangular move'),
  // DayNight(id: 33, logo: '', title: 'Pattern focus'),
  // DayNight(id: 34, logo: '', title: 'Light flicker'), //nai
  // DayNight(id: 35, logo: '', title: 'Random move'),
  // DayNight(id: 36, logo: '', title: 'Left right move'),
  // DayNight(id: 37, logo: '', title: 'Blinking'), //nai
  // DayNight(id: 38, logo: '', title: 'Circle focus'),
  // DayNight(id: 39, logo: '', title: 'Closing tight'),
  // DayNight(id: 40, logo: '', title: 'Closed eye move'),
  // DayNight(id: 41, logo: '', title: 'Plaming'),
  // DayNight(id: 42, logo: '', title: 'Two objects'),
  // DayNight(id: 43, logo: '', title: 'Tibetan Eye Chart'),
  // DayNight(id: 44, logo: '', title: 'Dry Eye'),
  // DayNight(id: 45, logo: '', title: 'Kaleidoscope'),
];

// class Night {
//   int id;
//   String logo;
//   String title;

//   Night({this.id, this.logo, this.title});
// }

// List<Night> night = <Night>[
//   Night(id: 1, logo: 'Focus Shift', title: 'Focus Shift'),
//   Night(id: 2, logo: 'Gabor Blinking', title: 'Gabor Blinking'),
//   Night(id: 3, logo: 'Blurry Gabor', title: 'Blurry Gabor'),
//   Night(id: 4, logo: 'Splitting Gabor', title: 'Splitting Gabor'),
//   // Night(id: 5, logo: '', title: 'Blurry gs
//   // DayNight(id: 11, logo: '', title: 'Traffic lights'),
//   // DayNight(id: 12, logo: '', title: 'Yin yang flicker'),
//   // DayNight(id: 13, logo: '', title: 'Yin yang focus'),
//   // DayNight(id: 14, logo: '', title: 'Roller coaster'), //nai
//   // DayNight(id: 15, logo: '', title: 'Flashing shapes'),
//   // DayNight(id: 16, logo: '', title: 'Wave move'),
//   // DayNight(id: 17, logo: '', title: 'Light flare'),
//   // DayNight(id: 18, logo: '', title: 'Cross move'),
//   // DayNight(id: 19, logo: '', title: 'Jumping move'),
//   // DayNight(id: 20, logo: '', title: 'Bouncing ball'),
//   // DayNight(id: 21, logo: '', title: 'Growing pattern'),
//   // DayNight(id: 22, logo: '', title: 'Chessboard flicker'),
//   // DayNight(id: 23, logo: '', title: 'Diagonal move'),
//   // DayNight(id: 24, logo: '', title: 'Ellipsis move'),
//   // DayNight(id: 25, logo: '', title: 'Flower move'),
//   // DayNight(id: 26, logo: '', title: 'Spiral move'),
//   // DayNight(id: 27, logo: '', title: 'Spring move'),
//   // DayNight(id: 28, logo: '', title: 'Trajectory Move'),
//   // DayNight(id: 29, logo: '', title: 'Butterfly move'),
//   // DayNight(id: 30, logo: '', title: 'Infinity move'),
//   // DayNight(id: 31, logo: '', title: 'Circle move'),
//   // DayNight(id: 32, logo: '', title: 'Ractangular move'),
//   // DayNight(id: 33, logo: '', title: 'Pattern focus'),
//   // DayNight(id: 34, logo: '', title: 'Light flicker'), //nai
//   // DayNight(id: 35, logo: '', title: 'Random move'),
//   // DayNight(id: 36, logo: '', title: 'Left right move'),
//   // DayNight(id: 37, logo: '', title: 'Blinking'), //nai
//   // DayNight(id: 38, logo: '', title: 'Circle focus'),
//   // DayNight(id: 39, logo: '', title: 'Closing tight'),
//   // DayNight(id: 40, logo: '', title: 'Closed eye move'),
//   // DayNight(id: 41, logo: '', title: 'Plaming'),
//   // DayNight(id: 42, logo: '', title: 'Two objects'),
//   // DayNight(id: 43, logo: '', title: 'Tibetan Eye Chart'),
//   // DayNight(id: 44, logo: '', title: 'Dry Eye'),
//   // DayNight(id: 45, logo: '', title: 'Kaleidoscope'),
// ];
