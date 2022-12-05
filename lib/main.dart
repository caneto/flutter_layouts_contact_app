import 'dart:io';
import 'package:contactapp/android/android.app.dart';
import 'package:contactapp/ios/ios.app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void main() {
  if(Platform.isIOS) {
    runApp(const IOSApp());
  } else {
    runApp(const AndroidApp());
  }
}


