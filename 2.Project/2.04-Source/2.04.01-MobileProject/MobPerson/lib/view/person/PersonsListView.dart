import 'package:MobPerson/data_dummy/personsDataDummy.dart';
import 'package:MobPerson/widget/AppDrawer.dart';
import 'package:MobPerson/widget/PersonListItemWidget.dart';
import 'package:flutter/material.dart';

class PersonsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final persons = PERSONS_DUMMY;
    print('PersonsListView 1');
    print(persons.toString());
    print(persons.length);
    print(persons[0].id);
    print(persons[0].fullName);
    print('PersonsListView 2');

    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => null,
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Container(
        child: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (ctx, i) => Column(
            children: <Widget>[
              PersonListItemWidget(persons[i]),
            ],
          ),
        ),
      ),
    );
  }
}
