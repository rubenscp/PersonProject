import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/view/PersonViewTabComments.dart';
import 'package:MobPerson/view/PersonViewTabComplement.dart';
import 'package:MobPerson/view/PersonViewTabInterests.dart';
import 'package:MobPerson/view/PersonViewTabPersonal.dart';
import 'package:MobPerson/view/PersonViewTabWork.dart';
import 'package:flutter/material.dart';

class PersonTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersonEntity personEntity =
        ModalRoute.of(context).settings.arguments as PersonEntity;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoa app'),
      ),
      body: MaterialApp(
        home: DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Pessoa'),
              // textTheme: Theme.of(context).textTheme,
              backgroundColor: Theme.of(context).primaryColor,
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.person_outline),
                  ),
                  Tab(
                    icon: Icon(Icons.work),
                  ),
                  Tab(
                    icon: Icon(Icons.nature),
                  ),
                  Tab(
                    icon: Icon(Icons.add_box),
                  ),
                  Tab(
                    icon: Icon(Icons.business),
                  ),
                  Tab(
                    icon: Icon(Icons.comment),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                PersonViewTabPersonal(),
                PersonViewTabWork(),
                PersonViewTabInterests(),
                PersonViewTabComplement(),
                Icon(Icons.person_outline),
                PersonViewTabComments(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
