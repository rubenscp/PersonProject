import 'package:flutter/material.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/view/person/PersonTabNewEditPersonal.dart';

class PersonTabNewEdit extends StatefulWidget {
  @override
  _PersonTabNewEditState createState() => _PersonTabNewEditState();
}

class _PersonTabNewEditState extends State<PersonTabNewEdit> {
  final formData = Map<String, Object>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (formData.isEmpty) {
      final personEntity =
          ModalRoute.of(context).settings.arguments as PersonEntity;
      if (personEntity != null) {
        formData['id'] = personEntity.id;
        formData['fullname'] = personEntity.fullName;
        formData['email'] = personEntity.email;
        formData['personalPhone'] = personEntity.personalPhone;
        formData['commercialPhone'] = personEntity.commercialPhone;
      } else {
        formData['id'] = 0;
        formData['fullname'] = '';
        formData['email'] = '';
        formData['personalPhone'] = 0;
        formData['commercialPhone'] = 0;
      }
    }
  }

  // Future<void> _saveForm() async {
  //   print('save form 1');
  //   print(this.formData);
  //   // await PersonDao().save(_personEntity);
  // }

  @override
  Widget build(BuildContext context) {
    // defining the form title
    PersonEntity _personEntity =
        ModalRoute.of(context).settings.arguments as PersonEntity;
    final String formTitle =
        _personEntity == null ? 'Nova Pessoa' : 'Alterar Pessoa';

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(formTitle),
          backgroundColor: Theme.of(context).primaryColor,
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.save),
          //     onPressed: () {},
          //   ),
          // ],
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
            PersonTabNewEditPersonal(this.formData),
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
