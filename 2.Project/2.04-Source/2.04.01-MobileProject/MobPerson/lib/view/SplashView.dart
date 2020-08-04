import 'package:MobPerson/util/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:MobPerson/dao/DatabaseHelper.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future openDatabaseFuture = DatabaseHelper.getInstance().db;
    Future delayFuture = Future.delayed(Duration(seconds: 3));

    Future.wait([openDatabaseFuture, delayFuture]).then((List values) {
      print(values);

      Navigator.of(context).pushNamed(AppRoutes.PERSON_ACTION_LIST);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[400],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'mobPerson',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'versão 1.0.0',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
