import 'package:flutter/material.dart';

class AppIcon extends StatefulWidget {
  @override
  _AppIconState createState() => _AppIconState();
}

class _AppIconState extends State<AppIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Container(
            height: MediaQuery.of(context).size.width - 20,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15),),
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.indigoAccent, Colors.lightBlueAccent],
                              end: Alignment.topRight,
                              begin: Alignment.bottomLeft),
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
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.indigoAccent, Colors.lightBlueAccent],
                              end: Alignment.topRight,
                              begin: Alignment.bottomLeft),
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
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.indigoAccent, Colors.lightBlueAccent],
                              end: Alignment.topRight,
                              begin: Alignment.bottomLeft),
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
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.indigoAccent, Colors.lightBlueAccent],
                              end: Alignment.topRight,
                              begin: Alignment.bottomLeft),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
