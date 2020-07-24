import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/widget/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class PersonTabViewPersonal extends StatelessWidget {
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
              'Dados Pessoais',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          TextFieldWidget('Id:', personEntity.id.toString()),
          TextFieldWidget('Nome:', personEntity.fullName),
          TextFieldWidget('Email:', personEntity.email),
          TextFieldWidget('Sexo:', personEntity.genderFormatted()),
          TextFieldWidget(
              'Telefone pessoal:', personEntity.personalPhoneFormatted()),
          TextFieldWidget(
              'Telefone comercial:', personEntity.commercialPhoneFormatted()),
          TextFieldWidget('Cidade:', personEntity.cityEntityFormatted()),
        ],
      ),
    );
  }
}
