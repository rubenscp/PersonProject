import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:flutter/material.dart';

class PersonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersonEntity personEntity =
        ModalRoute.of(context).settings.arguments as PersonEntity;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pessoa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
              initialValue: personEntity.fullName,
              decoration: InputDecoration(labelText: 'Nome completo'),
            ),
          ],
        ),
      ),
    );
  }
}
