import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'data.dart';

class LevelTile extends StatefulWidget {

  final int lvl;
  final bool completed;
  final Function reload;
  final Function reloadAfterWin;

  LevelTile({@required this.completed, @required this.lvl, @required this.reload, @required this.reloadAfterWin});

  @override
  _LevelTileState createState() => _LevelTileState();
}

class _LevelTileState extends State<LevelTile> {

  bool com = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      com = widget.completed;
    });
    CheckIfCompleted();
  }

  void CheckIfCompleted() async {
    print('CHECK');
    final prefs = await SharedPreferences.getInstance();
    print('CODE2 = LVL${widget.lvl}');
    if (prefs.getBool('LVL${widget.lvl}') == true) {
      setState(() {
        print('SETTING');
        com = true;
      });
    }
  }

  LinearGradient whichGrad() {
    if (MyData.currentLvl == widget.lvl) {
      return LinearGradient(
          colors: [Colors.cyan, Colors.cyanAccent],
          end: Alignment.topRight,
          begin: Alignment.bottomLeft);
    }
    else {
      return LinearGradient(
      colors: [Colors.indigoAccent, Colors.lightBlueAccent],
    end: Alignment.topRight,
    begin: Alignment.bottomLeft);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          widget.reloadAfterWin();
          MyData.shuffle(widget.lvl);
          widget.reload();
          Navigator.pop(context);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
                gradient: whichGrad(),
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
            child: Stack(
              children: <Widget>[
                Center(
                  child: Text('Lvl ${widget.lvl}', style: TextStyle(fontFamily: 'Ub', color: Colors.white, fontSize: MediaQuery.of(context).size.width / 15), textScaleFactor: 1,),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: com == true ? Padding(child: Icon(Icons.check_circle_outline, color: Colors.white, size: MediaQuery.of(context).size.width / 18,), padding: EdgeInsets.only(bottom: 2, right: 2),) : Icon(Icons.check_circle_outline, color: Colors.transparent, size: MediaQuery.of(context).size.width / 18,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}