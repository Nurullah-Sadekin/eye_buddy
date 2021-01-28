import 'package:eye_buddy/util/colorconfig.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GoodResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var hp = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icon/back_arrow.png'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Container(
                //   padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
              Container(
                //  padding: EdgeInsets.only(top: 9),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/icon/button_bg.png',
                      height: 40,
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon/button_play.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Lottie.asset('assets/1.json'),
              Image.asset("assets/images/good.png")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodResult()),
                  );
                },
                child: Text(
                  'Retry Test',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodResult()),
                  );
                },
                child: Text(
                  'Exit',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
            ],
          ),
          ElevatedButton(
            child: Text('Go for Second'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
          ),
        ]),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hp = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icon/back_arrow.png'),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Column(
            children: [
              Container(height: hp * .2, child: Lottie.asset('assets/3.json')),
              Image.asset("assets/images/sad.png"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodResult()),
                  );
                },
                child: Text(
                  'Retry Test',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodResult()),
                  );
                },
                child: Text(
                  'Exit',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
            ],
          ),
          ElevatedButton(
            child: Text('Go for Third'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
          ),
        ]),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var hp = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var hw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icon/back_arrow.png'),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Lottie.asset('assets/2.json'),
              Image.asset("assets/images/ok.png")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodResult()),
                  );
                },
                child: Text(
                  'Retry Test',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
              MaterialButton(
                // height: hp * 0.07,
                // minWidth: hw * 0.7,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodResult()),
                  );
                },
                child: Text(
                  'Exit',
                  style: TextStyle(
                      fontFamily: 'DemiBold', color: colorFromHex('#FEC62D')),
                ),
                color: colorFromHex('#181D3D'),
              ),
            ],
          ),
          ElevatedButton(
            child: Text('Go for First'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoodResult()),
              );
            },
          ),
        ]),
      ),
    );
  }
}
