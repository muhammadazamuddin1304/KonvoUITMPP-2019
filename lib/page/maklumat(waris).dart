import 'package:flutter/material.dart';

class MaklumatIbuBapa extends StatelessWidget {
  static const String routeName = "/5";

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
            child: Image.asset('images/ibu_bapa.jpg'),
          ),
          new Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(
                'MAKLUMAT ISTIADAT (IBU-BAPA)',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
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
