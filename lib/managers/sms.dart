// Copyright 2018 Vladimir Poliakov and The Contributors. All rights reserved.
// Use of this source code is governed by a MIT style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class SMSManager {
  /// It's just a mock. SMS sending not implementing yet.
  static sendFunc(BuildContext context) =>
    () {
      showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text("Alert"),
          content: Text("It's just a mock at the moment. SMS NOT SENT."),
        ),
      );
    };
}