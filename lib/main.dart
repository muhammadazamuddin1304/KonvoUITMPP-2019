import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:convoapp2019/page/maklumat(graduan).dart';
//import 'package:convoapp2019/page/maklumat(waris).dart';
//import 'package:convoapp2019/page/pengumuman.dart';
//import 'package:convoapp2019/page/hubungikami.dart';

void main() {
  runApp(MaterialApp(
    darkTheme: true,
    initialRoute: 'lamanutama',
    routes: {
      'lamanutama': (context) => LamanUtama(),
      'maklumat(graduan)': (context) => MaklumatGraduan(),
    },
  ));
}

class LamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset('images/banner.png'),
          ),
          Expanded(
            child: Container(
              height: 50.0,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: Text('Maklumat Graduan'),
                    onTap: () {
                      Navigator.pushNamed(context, 'maklumat(graduan)');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
