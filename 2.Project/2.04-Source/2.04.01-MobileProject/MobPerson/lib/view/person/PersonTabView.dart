import 'package:flutter/material.dart';

import 'PersonTabViewComments.dart';
import 'PersonTabViewComplement.dart';
import 'PersonTabViewEnterpriseVisit.dart';
import 'PersonTabViewInterests.dart';
import 'PersonTabViewPersonal.dart';
import 'PersonTabViewWork.dart';

class PersonTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Informações da Pessoa'),
          backgroundColor: Theme.of(context).primaryColor,
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
            PersonTabViewPersonal(),
            PersonTabViewWork(),
            PersonTabViewInterests(),
            PersonTabViewComplement(),
            PersonTabViewEnterpriseVisit(),
            PersonTabViewComments(),
          ],
        ),
      ),
    );
  }
}
