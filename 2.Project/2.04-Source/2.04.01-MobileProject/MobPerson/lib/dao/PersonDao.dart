import 'dart:async';
import 'package:sqflite/sqflite.dart';

import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/dao/DatabaseHelper.dart';

class PersonDao {
  Future<Database> get db => DatabaseHelper.getInstance().db;

  Future<int> save(PersonEntity personEntity) async {
    print('PersonDao - save 1');

    print('classe PersonDao - instancia db - 1');

    var dbClient = await db;
    print(dbClient.toString());

    print('classe PersonDao - instancia db - 2');

    print('PersonDao - save 2');
    print(personEntity.toJsonSqflite());
    print('PersonDao - save 3');
    var id = await dbClient.insert(
      "person",
      personEntity.toJsonSqflite(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('PersonDao - save 4');
    print('id: $id');
    print('PersonDao - save 5');
    return id;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.rawDelete('delete from person where id = ?', [id]);
  }

  Future<List<PersonEntity>> findAll() async {
    final dbClient = await db;

    final list = await dbClient.rawQuery('select * from person order by upper(full_name)');

    final personsEntity = list
        .map<PersonEntity>((json) => PersonEntity.fromJsonSqflite(json))
        .toList();

    return personsEntity;
  }

  Future<PersonEntity> findById(int id) async {
    var dbClient = await db;
    final list =
        await dbClient.rawQuery('select * from person where id = ?', [id]);

    if (list.length > 0) {
      return new PersonEntity.fromJsonSqflite(list.first);
    }

    return null;
  }
}
