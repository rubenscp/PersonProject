import 'package:flutter/material.dart';

import 'package:MobPerson/dao/PersonDao.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/util/AppRoutes.dart';

import 'package:MobPerson/widget/AppDrawer.dart';
import 'package:MobPerson/widget/PersonListItemWidget.dart';

class PersonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final persons = PERSONS_DUMMY;
    // final persons = null;
    Future<List<PersonEntity>> personsFuture = PersonDao().findAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PERSON_ACTION_NEW_EDIT,
              );
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: FutureBuilder<List<PersonEntity>>(
        future: personsFuture,
        builder: (ctx, snapshot) {
          List<PersonEntity> persons = snapshot.data ?? [];
          return persons.isEmpty
              ? Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    heightFactor: 1,
                    child: Text(
                      'Nao existem pessoas cadastradas.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: persons.length,
                  itemBuilder: (ctx, i) => PersonListItemWidget(persons[i]),
                );
          //
        },
      ),
    );
  }
}
