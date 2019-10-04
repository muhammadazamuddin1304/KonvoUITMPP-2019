import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class JawatankuasaKonvo extends StatelessWidget {
  static const String routeName = "/4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('JAWATANKUASA KONVOKESYEN'),
      ),
      body: MyJawatankuasaKonvo(),
    );
  }
}

class MyJawatankuasaKonvo extends StatefulWidget {
  @override
  _MyJawatankuasaKonvoState createState() => _MyJawatankuasaKonvoState();
}

class _MyJawatankuasaKonvoState extends State<MyJawatankuasaKonvo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance
                  .collection('jawatankuasa_konvo')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return new Text('Loading...');
                  default:
                    return new ListView(
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        return new CustomCard(
                          title: document['title'],
                          description: document['description'],
                        );
                      }).toList(),
                    );
                }
              },
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
