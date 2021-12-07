import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CW_num_square.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';
import 'data.dart';
import 'CW_level_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  void winCheck() {
    setState(() {
      attempts++;
    });
    _confettiController.play();
    aAnimController.forward();
    aAnimController.addListener(() {
      setState(() {});
    });
  }

  void loseCheck() {
    setState(() {
      attempts++;
    });
  }

  ConfettiController _confettiController;

  AnimationController aAnimController;

  AnimationController cController;
  Animation canim;

  AnimationController dController;
  Animation danim;

  int attempts = 0;

  int square1;
  int square2;
  int square3;
  int square4;
  int square5;
  int square6;
  int square7;
  int square8;
  int square9;
  int square10;
  int square11;
  int square12;
  int square13;
  int square14;
  int square15;
  int square16;

  void reloadMain() {
    print('Reloaded');
    setState(() {
      setState(() {
        square1 = MyData.s1;
        square2 = MyData.s2;
        square3 = MyData.s3;
        square4 = MyData.s4;
        square5 = MyData.s5;
        square6 = MyData.s6;
        square7 = MyData.s7;
        square8 = MyData.s8;
        square9 = MyData.s9;
        square10 = MyData.s10;
        square11 = MyData.s11;
        square12 = MyData.s12;
        square13 = MyData.s13;
        square14 = MyData.s14;
        square15 = MyData.s15;
        square16 = MyData.s16;
      });
    });
  }

  @override
  void initState() {
    print('Init Called');
    super.initState();
    dController = AnimationController(
      duration: Duration(milliseconds: 25),
      vsync: this,
    );
    danim = IntTween(begin: 100, end: 110).animate(dController);
    dController.addListener(() {
      setState(() {});
    });
    cController = AnimationController(
      duration: Duration(milliseconds: 25),
      vsync: this,
    );
    canim = IntTween(begin: 100, end: 110).animate(cController);
    cController.addListener(() {
      setState(() {});
    });
    int max = MyData.totalLevels + 1;
    int min = 1;
    Random rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    MyData.shuffle(r); // load next level for them to complete
    setState(() {
      square1 = MyData.s1;
      square2 = MyData.s2;
      square3 = MyData.s3;
      square4 = MyData.s4;
      square5 = MyData.s5;
      square6 = MyData.s6;
      square7 = MyData.s7;
      square8 = MyData.s8;
      square9 = MyData.s9;
      square10 = MyData.s10;
      square11 = MyData.s11;
      square12 = MyData.s12;
      square13 = MyData.s13;
      square14 = MyData.s14;
      square15 = MyData.s15;
      square16 = MyData.s16;
    });
    _confettiController = ConfettiController(duration: Duration(seconds: 3));
    aAnimController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _confettiController.dispose();
    aAnimController.dispose();
    cController.dispose();
    dController.dispose();
  }

  String attemptDisplay(id) {
    switch (id) {
      case 1:
        {
          if (attempts < 100) {
            return '$attempts';
          } else {
            return '99+';
          }
        }
        break;
      case 2:
        {
          if (attempts == 1) {
            return '$attempts attempt';
          } else if (attempts < 100) {
            return '$attempts attempts';
          } else {
            return '99+ attempts';
          }
        }
        break;
    }
  }

  void resetAfterWin() {
    attempts = 0;
    aAnimController.reset();
  }

  GlobalKey _keyRed = GlobalKey();

  void _getSizes() {
    final RenderBox renderBoxRed = _keyRed.currentContext.findRenderObject();
    final sizeRed = renderBoxRed.size;
    print("SIZE of Red: $sizeRed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(gradient: LinearGradient(colors: [Colors.lightBlueAccent, Colors.blue])),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                child: AspectRatio(
                  aspectRatio: 6 / 7.8,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 1.15 -
                                  MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          cController.forward();
                                          canim.addStatusListener((status) {
                                            if (status == AnimationStatus.completed) {
                                              cController.reverse();
                                            }
                                          });
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(15),
                                                    topLeft: Radius.circular(15),
                                                  )),
                                              child: SingleChildScrollView(
                                                physics: BouncingScrollPhysics(),
                                                child: Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceEvenly,
                                                        children: <Widget>[
                                                          LevelTile(
                                                            lvl: 1,
                                                            completed: false,
                                                            reload: reloadMain,
                                                            reloadAfterWin: resetAfterWin,
                                                          ),
                                                          LevelTile(
                                                            lvl: 2,
                                                            completed: false,
                                                            reload: reloadMain,
                                                            reloadAfterWin: resetAfterWin,
                                                          ),
                                                          LevelTile(
                                                            lvl: 3,
                                                            completed: false,
                                                            reload: reloadMain,
                                                            reloadAfterWin: resetAfterWin,
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceEvenly,
                                                        children: <Widget>[
                                                          LevelTile(
                                                            lvl: 4,
                                                            completed: false,
                                                            reload: reloadMain,
                                                            reloadAfterWin: resetAfterWin,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            backgroundColor: Colors.transparent,
                                          );
                                        },
                                        child: Transform.scale(
                                          scale: canim.value / 100,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 5, bottom: 5, right: 5, left: 5),
                                            height: MediaQuery.of(context).size.width * 1.15 -
                                                MediaQuery.of(context).size.width,
                                            width: MediaQuery.of(context).size.width / 5,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black54,
                                                  offset: Offset(2, 1),
                                                  blurRadius: 10,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: FittedBox(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      'Level',
                                                      style: TextStyle(
                                                          fontFamily: 'Ub',
                                                          color: Colors.grey,
                                                          fontSize: 35),
                                                    ),
                                                    Text(
                                                      '${MyData.currentLvl}',
                                                      style: TextStyle(
                                                          fontFamily: 'Ub',
                                                          color: Colors.indigoAccent,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 50),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: InkWell(
                                          onTap: () {
                                            dController.forward();
                                            danim.addStatusListener((status) {
                                              if (status == AnimationStatus.completed) {
                                                dController.reverse();
                                              }
                                            });
                                            attempts = 0;
                                            aAnimController.reset();
                                            MyData.shuffle(MyData.currentLvl +
                                                1); // load next level for them to complete
                                            setState(() {
                                              square1 = MyData.s1;
                                              square2 = MyData.s2;
                                              square3 = MyData.s3;
                                              square4 = MyData.s4;
                                              square5 = MyData.s5;
                                              square6 = MyData.s6;
                                              square7 = MyData.s7;
                                              square8 = MyData.s8;
                                              square9 = MyData.s9;
                                              square10 = MyData.s10;
                                              square11 = MyData.s11;
                                              square12 = MyData.s12;
                                              square13 = MyData.s13;
                                              square14 = MyData.s14;
                                              square15 = MyData.s15;
                                              square16 = MyData.s16;
                                            });
                                          },
                                          child: Transform.scale(
                                            scale: danim.value / 100,
                                            child: Container(
                                              height: MediaQuery.of(context).size.width * 1.15 -
                                                  MediaQuery.of(context).size.width,
                                              width: MediaQuery.of(context).size.width / 8,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black54,
                                                      offset: Offset(2, 1),
                                                      blurRadius: 10,
                                                    ),
                                                  ]),
                                              child: Center(
                                                child: Icon(
                                                  Icons.chevron_right,
                                                  size: MediaQuery.of(context).size.width / 9,
                                                  color: Colors.indigoAccent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Center(
                                      child: FittedBox(
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              'Pattern',
                                              textScaleFactor: 1,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Pacifico',
                                                  fontSize: MediaQuery.of(context).size.width / 20,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'Cracker',
                                              textScaleFactor: 1,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Pacifico',
                                                  fontSize: MediaQuery.of(context).size.width / 20,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                                    height: MediaQuery.of(context).size.width * 1.15 -
                                        MediaQuery.of(context).size.width,
                                    width: MediaQuery.of(context).size.width / 5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: Offset(2, 1),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: FittedBox(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Attempts',
                                              style: TextStyle(
                                                  fontFamily: 'Ub',
                                                  color: Colors.grey,
                                                  fontSize: 35),
                                            ),
                                            Text(
                                              attemptDisplay(1),
                                              style: TextStyle(
                                                  fontFamily: 'Ub',
                                                  color: Colors.indigoAccent,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 50),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.width,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: Offset(2, 1),
                                          blurRadius: 10,
                                        ),
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          NumSquare(
                                            num: square1,
                                            id: 1,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square2,
                                            id: 2,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square3,
                                            id: 3,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square4,
                                            id: 4,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          NumSquare(
                                            num: square5,
                                            id: 5,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square6,
                                            id: 6,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square7,
                                            id: 7,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square8,
                                            id: 8,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          NumSquare(
                                            num: square9,
                                            id: 9,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square10,
                                            id: 10,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square11,
                                            id: 11,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square12,
                                            id: 12,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          NumSquare(
                                            num: square13,
                                            id: 13,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square14,
                                            id: 14,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square15,
                                            id: 15,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                          NumSquare(
                                            num: square16,
                                            id: 16,
                                            win: winCheck,
                                            lose: loseCheck,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              aAnimController.value == 0
                                  ? Container()
                                  : Container(
                                      height: MediaQuery.of(context).size.width,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.white30.withOpacity(aAnimController.value * 0.6),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Win!',
                                            textScaleFactor: 1,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width / 5,
                                                fontFamily: 'Indie',
                                                color: Colors.black
                                                    .withOpacity(aAnimController.value * 0.6)),
                                          ),
                                          Text(
                                            attemptDisplay(2),
                                            textScaleFactor: 1,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width / 8,
                                                fontFamily: 'Indie',
                                                color: Colors.black
                                                    .withOpacity(aAnimController.value * 0.6)),
                                          ),
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              // confetti
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                numberOfParticles: 10,
                blastDirection: pi / 3,
                gravity: 0.3,
                colors: [
                  Colors.lightBlueAccent,
                  Colors.blue,
                  Colors.indigoAccent,
                  Colors.tealAccent,
                  Colors.teal,
                  Colors.cyan,
                  Colors.cyanAccent
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Container(
//height: MediaQuery.of(context).size.width / 5,
//width: MediaQuery.of(context).size.width / 4,
//decoration: BoxDecoration(
//color: Colors.white,
//borderRadius: BorderRadius.all(
//Radius.circular(10),
//),
//boxShadow: [
//BoxShadow(
//color: Colors.black54,
//offset: Offset(2, 1),
//blurRadius: 10,
//),
//]),
//child: Padding(
//padding: EdgeInsets.all(5),
//child: Column(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//children: <Widget>[
//Text(
//'Attempts',
//textScaleFactor: 1,
//style: TextStyle(
//fontFamily: 'Ub',
//color: Colors.grey,
//fontSize: 15),
//),
//Text(
//attemptDisplay(1),
//style: TextStyle(
//fontFamily: 'Ub',
//color: Colors.indigoAccent,
//fontSize: 25),
//),
//],
//),
//),
//),


