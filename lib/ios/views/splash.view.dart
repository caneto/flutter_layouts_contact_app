import 'dart:async';

import 'package:contactapp/ios/styles.dart';
import 'package:contactapp/ios/views/home.view.dart';
import 'package:flutter/cupertino.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {

      Timer(
         const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(CupertinoPageRoute(
                                builder: (BuildContext context) => const HomeView())));

    return CupertinoPageScaffold(
      backgroundColor: primaryColor,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              width: double.infinity,
            ),
            Icon(
              CupertinoIcons.padlock,
              size: 72,
              color: accentColor,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Meus Contatos",
              style: TextStyle(
                fontSize: 24,
                color: accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
