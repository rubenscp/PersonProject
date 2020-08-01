import 'package:flutter/material.dart';

class PersonTabNewEditPersonal extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  Map<String, Object> formData = Map<String, Object>();

  PersonTabNewEditPersonal(formData) {
    this.formData = formData;
  }

  // PersonEntity _personEntity = new PersonEntity();

  // @override
  // void initState() {
  //   super.initState();
  // }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();

  //   this._personEntity =
  //       ModalRoute.of(context).settings.arguments as PersonEntity;
  //   if (this._personEntity == null) {
  //     this._personEntity = new PersonEntity();
  //   }
  // }

  Future<void> _saveForm() async {
    print('save form 1');
    print(this.formData);
    // await PersonDao().save(_personEntity);
  }

  @override
  Widget build(BuildContext context) {
    // print('PersonTabNewEditPersonal 1 ');
    // print(this.formData);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: ListView(
          children: <Widget>[
            TextFormField(
              initialValue: this.formData['fullName'],
              decoration: InputDecoration(labelText: 'Nome'),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              readOnly: true,
            ),
            TextFormField(
              initialValue: this.formData['email'],
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              readOnly: true,
            ),
            TextFormField(
              initialValue: this.formData['personalPhone'].toString(),
              decoration: InputDecoration(labelText: 'Telefone pessoal'),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              initialValue: this.formData['commercialPhone'].toString(),
              decoration: InputDecoration(labelText: 'Telefone comercial'),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
            FloatingActionButton(
              child: Icon(Icons.save),
              backgroundColor: Theme.of(context).backgroundColor,
              onPressed: () => this._saveForm(),
            ),
          ],
        ),
      ),
    );
  }
}
