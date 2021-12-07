import 'package:flutter/material.dart';
import 'data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumSquare extends StatefulWidget {

  final int num;
  final int id;
  final Function win;
  final Function lose;

  NumSquare({@required this.num, @required this.id, @required this.lose, @required this.win});

  @override
  _NumSquareState createState() => _NumSquareState();
}

class _NumSquareState extends State<NumSquare> with SingleTickerProviderStateMixin{

  AnimationController aController;
  Animation anim;

  void saveComplete(lvlID) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('LVL${MyData.currentLvl}', true);
    print('CODE1 = LVL${MyData.currentLvl}');
  }

  @override
  void initState() {
    super.initState();
    aController = AnimationController(
      duration: Duration(milliseconds: 25),
      vsync: this,
    );
    anim = IntTween(begin: 100, end: 110).animate(aController);
    aController.addListener((){
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    aController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        aController.forward();
        anim.addStatusListener((status){
          if (status == AnimationStatus.completed){
            aController.reverse();
          }
        });
        if (widget.id == MyData.errorSquare) {
          saveComplete(widget.id);
          widget.win();
        }
        else {
          widget.lose();
        }
      },
      child: Transform.scale(
        scale: anim.value / 100,
        child: Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.width / 6,
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
          child: Center(
            child: Text(
              '${widget.num}',
              textScaleFactor: 1,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Ub',
                  fontSize: MediaQuery.of(context).size.width / 12),
            ),
          ),
        ),
      ),
    );
  }
}