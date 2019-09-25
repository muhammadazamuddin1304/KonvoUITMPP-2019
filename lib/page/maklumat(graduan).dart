import 'package:flutter/material.dart';

class MaklumatGraduan extends StatelessWidget {
  static const String routeName = "lamanutama";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maklumat (Graduan)'),
        ),
      ),
    );
  }
}
