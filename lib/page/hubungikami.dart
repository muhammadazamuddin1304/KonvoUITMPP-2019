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
              child: ListTile(
                contentPadding: EdgeInsets.all(8.0),
                leading: Icon(Icons.code),
                title: Text('PENYENGGARA APLIKASI',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            )
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
