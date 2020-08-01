import 'package:MobPerson/util/AppRoutes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('MobPerson'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            title: Text(
              'Pessoa',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.PERSON_ACTION_LIST,
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Área de Atuação',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Cidade',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Área de Especialização',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Unidade da Federação',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Área de Interesse',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Produto ou Cultura',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Escolaridade',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
