import 'package:flutter/material.dart';
import 'package:convoapp2019/page/contactUs/calls_and_messages_service.dart';
import 'package:convoapp2019/page/contactUs/service_locator.dart';
//import 'package:url_launcher/url_launcher.dart';

class HubungiKami extends StatefulWidget {
  static const String routeName = "/6";

  @override
  _HubungiKamiState createState() => _HubungiKamiState();
}

class _HubungiKamiState extends State<HubungiKami> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

  final String number = "+60125839885";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hubungi Kami',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Container(
                //padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
                height: 35,
                child: Text(
                  'Hubungi Kami Di Talian Yang Disediakan :',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.all(4.0),
                  leading: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.code, color: Colors.black),
                  ),
                  title: Text('PENYENGGARA APLIKASI',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Center(
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.all(2.0),
                  leading: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.contacts, color: Colors.black),
                  ),
                  title: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Encik Muhammad Syabani Bin Hassan',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text('Penolong Pegawai Teknologi Maklumat'),
                  ),
                  trailing: IconButton(
                    padding: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
                    icon: Icon(Icons.call, color: Colors.black),
                    onPressed: () => _service.call(number),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.all(2.0),
                  leading: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.contacts, color: Colors.black),
                  ),
                  title: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Encik Muhammad Azamuddin Abu Bakar',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text('Pelajar Praktikal Bahagian Infostruktur'),
                  ),
                  trailing: IconButton(
                    padding: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
                    icon: Icon(Icons.call, color: Colors.black),
                    onPressed: () => _service.call(number),
                  ),
                ),
              ),
            ),
          ],
        ),
        /* RaisedButton(
              child: Text(
                "call $number",
              ),
              onPressed: () => _service.call(number),
            ), */
      ),
    );
  }
}
