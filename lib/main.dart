import 'package:flutter/material.dart';
import 'package:convoapp2019/page/maklumat(graduan).dart';
//import 'package:convoapp2019/page/maklumat(waris).dart';
//import 'package:convoapp2019/page/pengumuman.dart';
//import 'package:convoapp2019/page/hubungikami.dart';

void main() {
  runApp(MaterialApp(
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
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/banner.png',
              ),
            ),
            /*Container(
                padding: const EdgeInsets.all(8.0),
              ),*/
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(8.0),
                      height: 50,
                      child: Text(
                        'Maklumat Graduan',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'maklumat(graduan)');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /*Column(
            children: <Widget>[
              Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        title: Text('Maklumat Graduan'),
                        onTap: () {
                          Navigator.pushNamed(context, 'maklumat(graduan)');
                        },
                      ),
                    ]
                  ),
                ),
            ],
          ),*/
    );
  }
}
