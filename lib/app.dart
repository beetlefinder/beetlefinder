// Copyright 2018 Vladimir Poliakov and The Contributors. All rights reserved.
// Use of this source code is governed by a MIT style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'pages/alert.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'beetlefinder',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AlertPage(),
    );
  }
}
