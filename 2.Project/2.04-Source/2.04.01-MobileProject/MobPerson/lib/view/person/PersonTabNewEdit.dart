import 'package:MobPerson/dao/PersonDao.dart';
import 'package:flutter/material.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/view/person/PersonTabNewEditPersonal.dart';

class PersonTabNewEdit extends StatefulWidget {
  @override
  _PersonTabNewEditState createState() => _PersonTabNewEditState();
}

class _PersonTabNewEditState extends State<PersonTabNewEdit> {
  final _formData = Map<String, Object>();

  final personDao = new PersonDao();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_formData.isEmpty) {
      final personEntity =
          ModalRoute.of(context).settings.arguments as PersonEntity;
      if (personEntity != null) {
        _formData['id'] = personEntity.id;
        _formData['fullName'] = personEntity.fullName;
        _formData['email'] = personEntity.email;
        _formData['personalPhone'] = personEntity.personalPhone;
        _formData['commercialPhone'] = personEntity.commercialPhone;
      } else {
        _formData['id'] = null;
        _formData['fullName'] = '';
        _formData['email'] = '';
        _formData['personalPhone'] = 0;
        _formData['commercialPhone'] = 0;
      }
    }
  }

  Future<void> savePerson(Map<String, Object> formAllData) async {
    print('savePerson  1');
    print(formAllData);
    print('savePerson 2');

    final personEntity = PersonEntity(
      id: this._formData['id'],
      fullName: this._formData['fullName'],
      email: this._formData['email'],
      personalPhone: int.parse(this._formData['personalPhone']),
      commercialPhone: int.parse(this._formData['commercialPhone']),
      institutionName: '',
      jobRole: '',
      cpf: 0.toDouble(),
      mainAddress: '',
      addressComplement: '',
      cep: 0,
      dateOfLastVisit: DateTime.now(),
    );

    print('savePerson 3');
    print(personEntity.toJsonSqflite());
    print('savePerson 4');

    try {
      // final personDao = PersonDao();
      print('savePerson 5');
      final id = await personDao.save(personEntity);
      print('savePerson 6');
      print('savePerson id $id');
    } catch (e) {
      print('savePerson - gerou exceção ');
      print(e.toString());
    }

    print('savePerson 7');
  }

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
            PersonTabNewEditPersonal(this._formData, this.savePerson),
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
