import 'package:MobPerson/dao/PersonDao.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/util/AppRoutes.dart';
import 'package:MobPerson/widget/AppDrawer.dart';
import 'package:MobPerson/widget/PersonListItemWidget.dart';
import 'package:flutter/material.dart';

class PersonsListView extends StatelessWidget {
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
          return ListView.builder(
            itemCount: persons.length,
            itemBuilder: (ctx, i) => PersonListItemWidget(persons[i]),
          );
          //
        },
      ),
    );
  }
}
