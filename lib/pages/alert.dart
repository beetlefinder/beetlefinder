// Copyright 2018 Vladimir Poliakov and The Contributors. All rights reserved.
// Use of this source code is governed by a MIT style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import '../managers/sms.dart';

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

class AlertButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    RaisedButton(
      color: Colors.red,
      shape: CircleBorder(),
      padding: EdgeInsets.all(50.0),
      onPressed: SMSManager.sendFunc(context),
      child: Column(
        children: <Widget>[
          const Icon(
            Icons.wifi_tethering,
            size: 200.0,
          ),
          Text(
            "Alert",
            textScaleFactor: 3.0,
          ),
        ],
      ),
    );
}
