import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/widget/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class PersonTabViewEnterpriseVisit extends StatelessWidget {
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
              'Visitas',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          TextFieldWidget('Nº visitas:', personEntity.visitNumberFormatted()),
          TextFieldWidget('Data da última visita:',
              personEntity.dateOfLastVisitFormatted()),
          TextFieldWidget('Recebe informações da Empresa? ',
              personEntity.receiveInformationFromEmbrapaFormatted()),
        ],
      ),
    );
  }
}
