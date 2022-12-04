import 'package:contactapp/android/utils/styles.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contatos',
      theme: androidThem(),
      home: Container(
        child: const Text("ok"),
      ),
    );
  }
}