import 'dart:async';
import 'package:MobPerson/entity/PersonEntity.dart';
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
    String databasesPath = await getDatabasesPath();

    // print('databasesPath : $databasesPath');
    // await dropDatabase(databasesPath + '/person.db');

    String path = join(databasesPath, 'person.db');

    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );

    // for (int i = 1; i <= 20; i++) {
    //   await this._addPersons(db, i);
    // }

    // print(await this._findAll(db));

    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    // sql statement separated in nothr file
    // String createSql = await rootBundle.loadString('assets/sql/create.sql');
    // List<String> sqls = createSql.split(';');
    // for (var sql in sqls) {
    //   if (sql.trim().isNotEmpty) {
    //     print('sql: $sql');
    //     await db.execute(sql);
    //   }
    // }

    String createPersonTableSql = 'CREATE TABLE person('
        '  id INTEGER PRIMARY KEY'
        ', full_name TEXT'
        ', email TEXT'
        ', personal_phone INTEGER'
        ', commercial_phone INTEGER'
        ',  institution_name TEXT'
        ', job_role TEXT'
        ', cpf REAL'
        ', main_address TEXT'
        ', address_complemenT TEXT'
        ', cep INTEGER'
        ', date_of_last_visit TEXT'
        ')';

    await db.execute(createPersonTableSql);
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

  Future<void> dropDatabase(String databasePath) async {
    if (await databaseExists(databasePath)) {
      await deleteDatabase(databasePath);
      print('Database $databasePath deleted');
    } else {
      print('Database $databasePath does not exists');
    }
  }

  Future<int> _addPersons(Database db, int i) async {
    print('adicionando pessoas ');

    // CityEntity GOIANIA = CityEntity(
    //   id: '001',
    //   federationUnity: FederationUnityEntity(
    //     id: '001',
    //     federationUnityName: 'Goiás',
    //     federationUnityShortName: 'GO',
    //   ),
    //   name: 'Goiânia',
    // );

    PersonEntity person = PersonEntity(
      fullName: 'Rubens de Castro Pereira $i',
      email: 'pessoa00$i@gmail.com',
      personalPhone: 62984178356,
      commercialPhone: 6235332147,
      institutionName: 'Empresa X',
      jobRole: 'Analista de Sistemas e Professor',
      cpf: 37047485104.toDouble(),
      mainAddress: 'Rua 122, nr 126, Setor Sul',
      addressComplement: 'Qd.F43A, Lt. 47',
      cep: 74085500,
      dateOfLastVisit: DateTime.now(),
    );

    print('person: ${person.toJsonSqflite()}');

    try {
      print('adicionando insert 1');
      var id = await db.insert("person", person.toJsonSqflite(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print('adicionando insert 2');
      print('id: $id');
      return id;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<List<PersonEntity>> _findAll(Database db) async {
    final list = await db.rawQuery('select * from person');
    final persons = list
        .map<PersonEntity>((json) => PersonEntity.fromJsonSqflite(json))
        .toList();
    print('tamanho da lista: ${persons.length}');
    print(persons.toString());
    for (var person in persons) {
      print('person: ${person.toJsonSqflite()}');
    }
    return persons;
  }
}
