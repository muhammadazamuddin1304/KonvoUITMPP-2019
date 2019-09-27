import 'package:flutter/material.dart';

class ProsedurKonvokesyen extends StatelessWidget {
  static const String routeName = "/4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Image.asset('images/prosedurkonvokesyen.jpg'),
          ),
          new Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(
                'PROSEDUR KONVOKESYEN',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}
