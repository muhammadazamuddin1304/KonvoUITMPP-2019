import 'package:flutter/material.dart';
import 'package:convoapp2019/page/sidang.dart';

class MaklumatGraduan extends StatelessWidget {
  static const String routeName = "/3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.8, 0.9],
            colors: [
              Colors.purple[900],
              Colors.yellow[200],
              Colors.purple,
              Colors.purple[900],
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Image.asset(
                    'images/maklumatgraduan.png',
                  ),
                ),
                new Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 250,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 3, color: Colors.black)),
                    child: Material(
                      textStyle: TextStyle(backgroundColor: Colors.transparent),
                      child: InkWell(
                          highlightColor: Colors.purple,
                          child: Text('PECAHAN SIDANG',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.transparent,
                                fontSize: 20,
                              )),
                          onTap: () {
                            Navigator.pushNamed(context, '/3.1');
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
