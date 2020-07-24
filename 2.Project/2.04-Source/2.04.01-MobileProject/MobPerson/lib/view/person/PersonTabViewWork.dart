import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/widget/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class PersonTabViewWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersonEntity personEntity =
        ModalRoute.of(context).settings.arguments as PersonEntity;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Trabalho',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          TextFieldWidget('Emprego:', personEntity.jobRoleFormatted()),
          TextFieldWidget('Instituição ou Autônomo?', 'usar caixa de seleção'),
          TextFieldWidget(
              'Instituição:', personEntity.institutionNameFormatted()),
          TextFieldWidget('farmSize', 'FarmSizeEnum'),
        ],
      ),
    );
  }
}
