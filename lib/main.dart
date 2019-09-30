import 'package:convoapp2019/page/contactUs/service_locator.dart';
import 'package:convoapp2019/page/prosedurkonvokesyen.dart';
import 'package:flutter/material.dart';
import 'package:convoapp2019/page/maklumat(graduan).dart';
import 'package:convoapp2019/page/maklumat(waris).dart';
import 'package:convoapp2019/page/pengumuman.dart';
import 'package:flutter/rendering.dart';
import 'package:convoapp2019/page/hubungikami.dart';

void main() {
  setupLocator();
  runApp(
    MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LamanUtama(),
      routes: {
        '/1': (context) => LamanUtama(),
        '/2': (context) => Bulletin(),
        '/3': (context) => MaklumatGraduan(),
        '/4': (context) => ProsedurKonvokesyen(),
        '/5': (context) => MaklumatIbuBapa(),
        '/6': (context) => HubungiKami(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LamanUtama extends StatelessWidget {
  static const String routeName = "/1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.yellow[900],
              Colors.yellow,
              Colors.yellowAccent,
              Colors.yellowAccent[700],
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Image.asset(
                    'images/banner.png',
                  ),
                ),
                Positioned(
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
              margin: EdgeInsets.only(top: 32.0, left: 3.0, right: 3.0),
              padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white30,
                      blurRadius: 4,
                      offset: Offset(2, 4))
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.black87,
                    Colors.black45,
                    Colors.black45,
                    Colors.black87,
                  ],
                ),
              ),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Text(
                      'MENU UTAMA',
                      style: TextStyle(
                        fontSize: 24,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      'MENU UTAMA',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow[400],
                              blurRadius: 4,
                              offset: Offset(2, 4))
                        ],
                        border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.4, 0.6, 0.9],
                          colors: [
                            Colors.black26,
                            Colors.black87,
                            Colors.black87,
                            Colors.black26,
                          ],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(4.0, 32.0, 4.0, 0.0),
                      padding: EdgeInsets.all(3.0),
                      height: 50,
                      child: InkWell(
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Text('BULLETIN',
                                  style: TextStyle(
                                      fontSize: 21,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4
                                        ..color = Colors.black)),
                              Text(
                                'BULLETIN',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/2');
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow[400],
                              blurRadius: 4,
                              offset: Offset(2, 4))
                        ],
                        border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.4, 0.6, 0.9],
                          colors: [
                            Colors.black87,
                            Colors.black26,
                            Colors.black87,
                            Colors.black26,
                          ],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
                      padding: EdgeInsets.all(3.0),
                      height: 50,
                      child: InkWell(
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Text('MAKLUMAT ISTIADAT (GRADUAN)',
                                  style: TextStyle(
                                      fontSize: 21,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4
                                        ..color = Colors.black)),
                              Text(
                                'MAKLUMAT ISTIADAT (GRADUAN)',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/3');
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow[400],
                              blurRadius: 4,
                              offset: Offset(2, 4))
                        ],
                        border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.4, 0.6, 0.9],
                          colors: [
                            Colors.black87,
                            Colors.black26,
                            Colors.black26,
                            Colors.black87,
                          ],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
                      padding: EdgeInsets.all(3.0),
                      height: 50,
                      child: InkWell(
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Text('PROSEDUR KONVOKESYEN',
                                  style: TextStyle(
                                      fontSize: 21,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4
                                        ..color = Colors.black)),
                              Text(
                                'PROSEDUR KONVOKESYEN',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/4');
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow[400],
                              blurRadius: 4,
                              offset: Offset(2, 4))
                        ],
                        border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.4, 0.6, 0.9],
                          colors: [
                            Colors.black26,
                            Colors.black87,
                            Colors.black26,
                            Colors.black87,
                          ],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
                      padding: EdgeInsets.all(3.0),
                      height: 50,
                      child: InkWell(
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Text('MAKLUMAT ISTIADAT (WARIS)',
                                  style: TextStyle(
                                      fontSize: 21,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4
                                        ..color = Colors.black)),
                              Text(
                                'MAKLUMAT ISTIADAT (WARIS)',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/5');
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow[400],
                              blurRadius: 4,
                              offset: Offset(2, 4))
                        ],
                        border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.4, 0.6, 0.9],
                          colors: [
                            Colors.black26,
                            Colors.black87,
                            Colors.black87,
                            Colors.black26,
                          ],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
                      padding: EdgeInsets.all(3.0),
                      height: 50,
                      child: InkWell(
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Text('PERTANYAAN/CADANGAN',
                                  style: TextStyle(
                                      fontSize: 21,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4
                                        ..color = Colors.black)),
                              Text(
                                'PERTANYAAN/CADANGAN',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/6');
                        },
                      ),
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
