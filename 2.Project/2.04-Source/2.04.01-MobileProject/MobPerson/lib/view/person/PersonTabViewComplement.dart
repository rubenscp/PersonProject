import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/widget/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class PersonTabViewComplement extends StatelessWidget {
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
              'Complemento',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFieldWidget('CPF:', personEntity.cpfFormatted()),
          TextFieldWidget('Endereço:', personEntity.mainAddressFormatted()),
          TextFieldWidget(
              'Complemento:', personEntity.addressComplementFormatted()),
          TextFieldWidget('CEP:', personEntity.cepFormatted()),
          TextFieldWidget('Escolaridade:', '	List<SchoolingEntity>'),
        ],
      ),
    );
  }
}
