// Copyright 2018 Vladimir Poliakov and The Contributors. All rights reserved.
// Use of this source code is governed by a MIT style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'pages/alert.dart';

run() => runApp(new App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'beetlefinder',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new AlertPage(),
    );
  }
}
