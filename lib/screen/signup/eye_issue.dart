// import 'dart:developer';
// import 'package:flutter/material.dart';

// class EyeIssue extends StatefulWidget {
//   @override
//   _EyeIssueState createState() => _EyeIssueState();
// }

// class _EyeIssueState extends State<EyeIssue> {
//   bool selectingmode = false;
//   List<Language> paints = <Language>[
//     Language(1, 'None'),
//     Language(2, 'Longsightedness'),
//     Language(3, 'Shortsightedness'),
//     Language(4, 'Cataracts'),
//     Language(5, 'Lazy eye'),
//     Language(6, 'Accommodation spasm')
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: selectingmode
//               ? IconButton(
//                   icon: const Icon(Icons.arrow_back),
//                   onPressed: () {
//                     setState(() {
//                       selectingmode = false;
//                       paints.forEach((p) => p.selected = false);
//                     });
//                   },
//                 )
//               : null,
//           title: Text("Selectable ListView Example"),
//         ),
//         body: ListView(
//           children: List.generate(paints.length, (index) {
//             return ListTile(
//               onLongPress: () {
//                 setState(() {
//                   selectingmode = true;
//                 });
//               },
//               onTap: () {
//                 setState(() {
//                   if (selectingmode) {
//                     paints[index].selected = !paints[index].selected;
//                     log(paints[index].selected.toString());
//                   }
//                 });
//               },
//               selected: paints[index].selected,
//               leading: Container(
//                   width: 48,
//                   height: 48,
//                   padding: EdgeInsets.symmetric(vertical: 4.0),
//                   alignment: Alignment.center,
//                   child: Text(paints[index].title)),
//               title: Text('ID: ' + paints[index].id.toString()),
//               subtitle: Text(paints[index].title),
//               trailing: (selectingmode)
//                   ? ((paints[index].selected)
//                       ? Icon(Icons.check_box)
//                       : Icon(Icons.check_box_outline_blank))
//                   : null,
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// class Language {
//   final int id;
//   final String title;

//   bool selected = false;
//   Language(this.id, this.title);
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eye_buddy/util/colorconfig.dart';

class EyeIssue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, hw * 0.3, 20, 0),
        children: <Widget>[
          Text(
            'Your Eye issue',
            style: TextStyle(
              fontFamily: 'DemiBold',
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: hw * 0.2,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: MaterialButton(
          height: 40,
          minWidth: 220,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {},
          child: Text(
            'Done',
            style: TextStyle(
                fontFamily: 'DemiBold',
                color: colorFromHex('#181D3D'),
                fontSize: 16),
          ),
          color: colorFromHex("#FEC62D"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
