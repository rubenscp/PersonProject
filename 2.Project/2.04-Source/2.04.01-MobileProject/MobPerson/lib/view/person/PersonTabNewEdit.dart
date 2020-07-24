import 'package:flutter/material.dart';

class PersonTabNewEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Alterar Pessoa'),
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
            Tab(icon: Icon(Icons.person_outline)),
            Tab(icon: Icon(Icons.work)),
            Tab(icon: Icon(Icons.nature)),
            Tab(icon: Icon(Icons.add_box)),
            Tab(icon: Icon(Icons.business)),
            Tab(icon: Icon(Icons.comment)),
          ],
        ),
      ),
    );
  }
}
