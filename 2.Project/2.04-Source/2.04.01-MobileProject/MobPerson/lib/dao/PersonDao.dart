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
      personEntity.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('id: $id');
    return id;
  }
}
