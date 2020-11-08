import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../user.dart';

class UserDatabase {
// Define a function that inserts dogs into the database
  Future<void> insertUser(User user, Future<Database> database) async {
    print(database.toString());
    final Database db = await database;
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
