import 'dart:io';
import 'package:contactapp/android/android.app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void main() {
  if(Platform.isIOS) {

  } else {
    runApp(AndroidApp());
  }
}


