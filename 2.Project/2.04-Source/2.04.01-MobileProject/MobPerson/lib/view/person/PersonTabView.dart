import 'package:MobPerson/view/person/PersonTabViewComplement.dart';
import 'package:MobPerson/view/person/PersonTabViewEnterpriseVisit.dart';
import 'package:MobPerson/view/person/PersonTabViewInterests.dart';
import 'package:MobPerson/view/person/PersonTabViewPersonal.dart';
import 'package:MobPerson/view/person/PersonTabViewWork.dart';
import 'package:flutter/material.dart';

import 'PersonTabViewComments.dart';

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
