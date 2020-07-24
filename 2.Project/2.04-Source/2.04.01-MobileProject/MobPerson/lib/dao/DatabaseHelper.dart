import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.getInstance();
  DatabaseHelper.getInstance();

  factory DatabaseHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await _initDb();

    return _db;
  }

  Future _initDb() async {
    print('_initDb() 1');
    String databasesPath = await getDatabasesPath();
    print('_initDb() 2');
    String path = join(databasesPath, 'person.db');
    print('_initDb() 3');
    print("db $path");

    print('_initDb() 4');

    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
    print('_initDb() 5');
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    print('_onCreate() 1');

    await db.execute('CREATE TABLE person('
        '  id INTEGER PRIMARY KEY'
        ', full_name TEXT'
        ', email TEXT'
        ', personal_phone INTEGER'
        ', commercial_phone INTEGER'
        ', institutionName TEXT'
        ', jobRole TEXT'
        ', cpf REAL'
        ', mainAddress TEXT'
        ', addressComplemenT TEXT'
        ', cep INTEGER'
        ', date_of_last_visit TEXT'
        ', receiveInformationFromEmbrapa NUMERIC'
        ')');

    print('_onCreate() 2');
  }

  Future<FutureOr<void>> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    print("_onUpgrade: oldVersion: $oldVersion > newVersion: $newVersion");

    if (oldVersion == 1 && newVersion == 2) {
      await db.execute("alter table person add column NOVA TEXT");
    }
  }

  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}
