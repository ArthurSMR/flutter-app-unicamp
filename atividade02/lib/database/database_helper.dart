import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import '../user.dart';

class DatabaseHelper {
  static DatabaseHelper helper = DatabaseHelper._createInstance();
  static Database _database;

  String userTable = "user_table";
  String colUser = "username";
  String colPassword = "password";
  String colEmail = "email";
  String colGender = "gender";
  String colNews = "newsToEmail";

  DatabaseHelper._createInstance();

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "users.db";

    var userDatabase = openDatabase(path, version: 1, onCreate: _createDb);

    return userDatabase;
  }

  _createDb(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $userTable ($colUser text PRIMARY KEY, $colPassword text, $colEmail text, $colGender text, $colNews INTEGER)");
  }

  insertUser(User user) async {
    Database db = await this.database;
    var result = await db.insert(userTable, user.toMap());
    return result;
  }

  void printValues() async {
    if (await getCount() == 0) {
      print("Banco de dados vazio!");
    } else {
      print("Usuários cadastrados: ");
      DatabaseHelper.helper.getUserMapList().then((result) {
        result.forEach((user) {
          print(user);
        });
      });
    }
  }

  getUserMapList() async {
    Database db = await this.database;
    var result = await db.rawQuery("SELECT * FROM $userTable");
    return result;
  }

  getCount() async {
    Database db = await this.database;
    var x = await db.rawQuery("SELECT COUNT(*) FROM $userTable");
    int result = Sqflite.firstIntValue(x);
    return result;
  }
}
