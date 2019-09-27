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
        primarySwatch: Colors.brown,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              'images/bulletin.png',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2))
                      ],
                      border: Border.all(width: 5, color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(6.0),
                    height: 50,
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child:
                              Text('BULLETIN haha', style: TextStyle(fontSize: 21)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/2');
                        },
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2))
                      ],
                      border: Border.all(width: 5, color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(6.0),
                    height: 50,
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text('MAKLUMAT ISTIADAT (GRADUAN)',
                              style: TextStyle(fontSize: 21)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/3');
                        },
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2))
                      ],
                      border: Border.all(width: 5, color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(6.0),
                    height: 50,
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text('PROSEDUR KONVOKESYEN',
                              style: TextStyle(fontSize: 21)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/4');
                        },
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2))
                      ],
                      border: Border.all(width: 5, color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(6.0),
                    height: 50,
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text('MAKLUMAT ISTIADAT (IBU-BAPA)',
                              style: TextStyle(fontSize: 21)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/5');
                        },
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(0, 2))
                      ],
                      border: Border.all(width: 5, color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(6.0),
                    height: 50,
                    child: Material(
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text('HUBUNGI KAMI',
                              style: TextStyle(fontSize: 21)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/6');
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
