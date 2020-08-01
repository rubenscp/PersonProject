import 'dart:async';
import 'package:sqflite/sqflite.dart';

import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/dao/DatabaseHelper.dart';

class PersonDao {
  Future<Database> get db => DatabaseHelper.getInstance().db;

  Future<int> save(PersonEntity personEntity) async {
    var dbClient = await db;
    var id = await dbClient.insert(
      "person",
      personEntity.toJsonSqflite(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('id: $id');
    return id;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.rawDelete('delete from person where id = ?', [id]);
  }

  Future<List<PersonEntity>> findAll() async {
    final dbClient = await db;

    final list = await dbClient.rawQuery('select * from person');

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
