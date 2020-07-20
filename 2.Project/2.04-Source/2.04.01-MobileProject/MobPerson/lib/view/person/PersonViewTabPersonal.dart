import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:flutter/material.dart';

class PersonViewTabPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersonEntity personEntity =
        ModalRoute.of(context).settings.arguments as PersonEntity;

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Dados Pessoais ${personEntity.fullName}',
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
