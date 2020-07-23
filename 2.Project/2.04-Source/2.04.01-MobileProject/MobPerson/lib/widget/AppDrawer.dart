import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Bem vindo.'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          // ListTile(leading: Icon(Icons.person), title: Text('Pessoa')),
          ListTile(title: Text('Pessoa')),
          Divider(),
          ListTile(title: Text('Área de Atuação')),
          ListTile(title: Text('Cidade')),
          ListTile(title: Text('Área de Especialização')),
          ListTile(title: Text('Unidade da Federação')),
          ListTile(title: Text('Área de Interesse')),
          ListTile(title: Text('Produto ou Cultura')),
          ListTile(title: Text('Escolaridade')),
        ],
      ),
    );
  }
}
