import 'package:flutter/material.dart';

import 'package:MobPerson/dao/PersonDao.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/util/AppRoutes.dart';

import 'package:MobPerson/widget/AppDrawer.dart';
import 'package:MobPerson/widget/PersonListItemWidget.dart';

class PersonsList extends StatelessWidget {
  Future<List<PersonEntity>> _loadPersonsFuture() async {
    return await PersonDao().findAll();
  }

  Future<void> _refreshPersonsFuture(BuildContext context) {
    this._loadPersonsFuture();
    return Future.value();
  }

  @override
  Widget build(BuildContext context) {
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
        future: this._loadPersonsFuture(),
        builder: (ctx, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Pressione algo');

            case ConnectionState.active:
            case ConnectionState.waiting:
              return Text('Aguarde ...');
              break;

            case ConnectionState.done:
              if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              }
              List<PersonEntity> persons = snapshot.data ?? [];
              return RefreshIndicator(
                onRefresh: () => this._refreshPersonsFuture(context),
                child: persons.isEmpty
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
                        itemBuilder: (ctx, i) => PersonListItemWidget(
                          persons[i],
                          this._refreshPersonsFuture,
                        ),
                      ),
              );
              break;

            default:
              return null;
          }
        },
      ),
    );
  }
}
