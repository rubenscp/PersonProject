import 'package:flutter/material.dart';

class PersonTabNewEditPersonal extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  Map<String, Object> _formData = Map<String, Object>();
  Future<void> Function(Map<String, Object>) savePerson;

  // final personDao = new PersonDao();

  final _emailFocusNode = FocusNode();
  final _personalPhoneFocusNode = FocusNode();
  final _commercialPhoneFocusNode = FocusNode();

  PersonTabNewEditPersonal(this._formData, this.savePerson);

  Future<void> _saveForm() async {
    // call each "onSaved" method of the form controls
    this._form.currentState.save();

    print('save form 1');
    print(_formData);
    // await PersonDao().save(_personEntity);
    // print(this._form.currentState.;;

    print('save form 2');
    this.savePerson(this._formData);
    print('save form 3');

    // creating object to save
    // final personEntity = PersonEntity(
    //   id: this._formData['id'],
    //   fullName: this._formData['fullName'],
    //   email: this._formData['email'],
    //   personalPhone: int.parse(this._formData['personalPhone']),
    //   commercialPhone: int.parse(this._formData['commercialPhone']),
    //   institutionName: '',
    //   jobRole: '',
    //   cpf: 0.toDouble(),
    //   mainAddress: '',
    //   addressComplement: '',
    //   cep: 0,
    //   dateOfLastVisit: DateTime.now(),
    // );

    // print('save form 3');
    // print(personEntity.toJsonSqflite());
    // print('save form 4');

    // try {
    //   // final personDao = PersonDao();
    //   print('save form 5.1');
    //   final id = await personDao.save(personEntity);
    //   print('save form 5.2');
    //   print('id $id');
    // } catch (e) {
    //   print('save form - gerou exceção ');
    //   print(e.toString());
    // }

    // print('save form 6');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: this._form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                initialValue: this._formData['fullName'],
                decoration: InputDecoration(labelText: 'Nome'),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(this._emailFocusNode);
                },
                readOnly: false,
                onSaved: (value) => this._formData['fullName'] = value,
              ),
              TextFormField(
                initialValue: this._formData['email'],
                decoration: InputDecoration(labelText: 'Email'),
                focusNode: this._emailFocusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context)
                      .requestFocus(this._personalPhoneFocusNode);
                },
                readOnly: false,
                onSaved: (value) => this._formData['email'] = value,
              ),
              TextFormField(
                initialValue: this._formData['personalPhone'].toString(),
                decoration: InputDecoration(labelText: 'Telefone pessoal'),
                focusNode: this._personalPhoneFocusNode,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context)
                      .requestFocus(this._commercialPhoneFocusNode);
                },
                onSaved: (value) => this._formData['personalPhone'] = value,
              ),
              TextFormField(
                initialValue: this._formData['commercialPhone'].toString(),
                decoration: InputDecoration(labelText: 'Telefone comercial'),
                focusNode: this._commercialPhoneFocusNode,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  this._saveForm();
                },
                onSaved: (value) => this._formData['commercialPhone'] = value,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        backgroundColor: Colors.green,
        onPressed: () => this._saveForm(),
      ),
    );
  }
}
