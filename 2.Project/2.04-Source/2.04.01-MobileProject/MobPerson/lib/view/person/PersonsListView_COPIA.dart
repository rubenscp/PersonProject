import 'package:MobPerson/dao/PersonDao.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/widget/AppDrawer.dart';
import 'package:MobPerson/widget/PersonListItemWidget.dart';
import 'package:flutter/material.dart';

class PersonsListView_COPIA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final persons = PERSONS_DUMMY;
    final Future<List<PersonEntity>> _personsFutureList = PersonDao().findAll();
    // final List<PersonEntity> persons = (List<PersonEntity>)  _personsFutureList;
    // final persons = null;
    List<PersonEntity> persons = new List();
    _personsFutureList.then((value) {
      persons = value;
    });

    print(persons);

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
          itemCount: 1,
          itemBuilder: (ctx, i) => Column(
            children: <Widget>[
              persons == null || persons.length == 0
                  ? Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Text(
                        'Não existem pessoas cadastradas.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                        ),
                      ),
                    )
                  : PersonListItemWidget(persons[i], null),
            ],
          ),
        ),
      ),
    );
  }
}

// body: Container(
//   child: ListView.builder(
//     itemCount: 1,
//     itemBuilder: (ctx, i) => Column(
//       children: <Widget>[
//         persons == null
//             ? Text('Não existem pessoas cadastradas.')
//             : PersonListItemWidget(persons[i]),
//       ],
//     ),
//   ),
// ),
