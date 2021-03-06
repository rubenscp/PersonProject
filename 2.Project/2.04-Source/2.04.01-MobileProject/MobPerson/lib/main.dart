import 'package:MobPerson/view/SplashView.dart';
import 'package:flutter/material.dart';

import 'package:MobPerson/util/appRoutes.dart';

import 'view/person/PersonsList.dart';
import 'view/person/PersonTabView.dart';
import 'view/person/PersonTabNewEdit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pessoas na Organização',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: SplashView(),
      routes: {
        AppRoutes.PERSON_ACTION_LIST: (ctx) => PersonsList(),
        AppRoutes.PERSON_ACTION_VIEW: (ctx) => PersonTabView(),
        AppRoutes.PERSON_ACTION_NEW_EDIT: (ctx) => PersonTabNewEdit(),
      },
    );
  }
}
