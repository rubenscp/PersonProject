import 'package:flutter/material.dart';

import 'PersonViewTabComments.dart';
import 'PersonViewTabComplement.dart';
import 'PersonViewTabEnterpriseVisit.dart';
import 'PersonViewTabInterests.dart';
import 'PersonViewTabPersonal.dart';
import 'PersonViewTabWork.dart';

class PersonTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Incluir/Alterar Pessoa'),
          backgroundColor: Theme.of(context).primaryColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () => {},
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person_outline)),
              Tab(icon: Icon(Icons.work)),
              Tab(icon: Icon(Icons.nature)),
              Tab(icon: Icon(Icons.add_box)),
              Tab(icon: Icon(Icons.business)),
              Tab(icon: Icon(Icons.comment)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonViewTabPersonal(),
            PersonViewTabWork(),
            PersonViewTabInterests(),
            PersonViewTabComplement(),
            PersonViewTabEnterpriseVisit(),
            PersonViewTabComments(),
          ],
        ),
      ),
    );
  }
}
