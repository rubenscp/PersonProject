import 'package:MobPerson/dao/PersonDao.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/util/AppRoutes.dart';
import 'package:flutter/material.dart';

class PersonListItemWidget extends StatelessWidget {
  final PersonEntity personEntity;

  PersonListItemWidget(this.personEntity);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: null,
        title: Text(personEntity.fullName),
        trailing: Container(
          width: 150,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: Theme.of(context).primaryColor,
                onPressed: () => {
                  Navigator.of(context).pushNamed(
                    AppRoutes.PERSON_ACTION_VIEW,
                    arguments: personEntity,
                  )
                },
              ),
              IconButton(
                icon: Icon(Icons.edit),
                color: Theme.of(context).primaryColor,
                onPressed: () => {
                  Navigator.of(context).pushNamed(
                    AppRoutes.PERSON_ACTION_NEW_EDIT,
                    arguments: personEntity,
                  )
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Theme.of(context).errorColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text('Remover Pessoa'),
                      content: Text(
                        'Confirma remoção de ${personEntity.fullName}?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Não'),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        FlatButton(
                          child: Text('Sim'),
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ],
                    ),
                  ).then((value) async {
                    if (value) {
                      PersonDao().delete(personEntity.id);
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Pessoa excluída com sucesso!',
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(seconds: 5),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
