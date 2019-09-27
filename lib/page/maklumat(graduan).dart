import 'package:flutter/material.dart';

class MaklumatGraduan extends StatelessWidget {
  static const String routeName = "/3";

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
    );
  }
}
