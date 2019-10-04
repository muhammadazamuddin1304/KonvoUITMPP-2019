import 'package:flutter/material.dart';

class Sidang extends StatelessWidget {
  static const String routeName = "/3.1";

  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.white, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("SIDANG KONVOKESYEN"),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                text: "Sidang Pertama (Pagi)",
              ),
              new Tab(
                text: "Sidang Kedua (Petang)",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset('images/sidang1.png'),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              color: Colors.blueGrey,
              child: new Center(
                child: new Text(
                  "Second",
                  style: textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
