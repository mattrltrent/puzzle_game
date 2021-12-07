import 'package:flutter/material.dart';

class SOTest extends StatefulWidget {
  @override
  _SOTestState createState() => _SOTestState();
}

class _SOTestState extends State<SOTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        color: Colors.lightBlueAccent,
        child: Stack(
          children: <Widget>[
            Padding(
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
                                  child: Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
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
                                              '15',
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
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: InkWell(
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
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: FittedBox(
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(right: 45),
                                          child: Text(
                                            'Pattern',
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontFamily: 'Pacifico',
                                                fontSize: MediaQuery.of(context).size.width / 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 45),
                                          child: Text(
                                            'Cracker',
                                            textScaleFactor: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontFamily: 'Pacifico',
                                                fontSize: MediaQuery.of(context).size.width / 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
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
                                            fontFamily: 'Ub', color: Colors.grey, fontSize: 35),
                                      ),
                                      Text(
                                        '1',
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
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                    NumSquare(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumSquare extends StatefulWidget {
  @override
  _NumSquareState createState() => _NumSquareState();
}

class _NumSquareState extends State<NumSquare> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width / 6,
        height: MediaQuery.of(context).size.width / 6,
        decoration: BoxDecoration(
            color: Colors.blue,
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
        child: Center(
          child: Text(
            '16',
            textScaleFactor: 1,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Ub',
                fontSize: MediaQuery.of(context).size.width / 12),
          ),
        ),
      ),
    );
  }
}
