import 'dart:async';

import 'package:contactapp/android/view/home_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {

  const SplashView({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {

      Timer(
         const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (BuildContext context) => const HomeView())));

       return Scaffold(
           backgroundColor: Theme.of(context).primaryColor,
           body: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              const SizedBox(
                width: double.infinity,
              ),
              Icon(
               Icons.fingerprint,
               size: 72,
               color: Theme.of(context).colorScheme.secondary
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Meus Contatos",
                style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
     );
  }
}