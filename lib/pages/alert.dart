// Copyright 2018 Vladimir Poliakov and The Contributors. All rights reserved.
// Use of this source code is governed by a MIT style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AlertButton(),
          ],
        ),
      ),
    );
}

/// TODO: make the area click to the whole screen.
class AlertButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    RaisedButton(
      color: Colors.red,
      shape: CircleBorder(),
      padding: EdgeInsets.all(50.0),
      onPressed: _sendSMS(context),
      child: Column(
        children: <Widget>[
          const Icon(
            Icons.wifi_tethering,
            size: 200.0,
          ),
          const Text(
            "Alert",
            textScaleFactor: 3.0,
          ),
        ],
      ),
    );

  /// It's just a mock. SMS sending not implementing yet.
  _sendSMS(BuildContext context) =>
    () {
      showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          title: new Text("Alert"),
          content: new Text("It's just a mock at the moment. SMS NOT SENT."),
        ),
      );
    };
}
