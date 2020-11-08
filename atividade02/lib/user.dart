import 'package:flutter/foundation.dart';
import 'package:sqflite/sqlite_api.dart';
import 'database/user_database.dart';
import 'dart:async';

class User {
  String id = "1";
  String username;
  String password;
  String email;
  String gender;
  bool newsToEmail = false;

  void printValues() {
    print("O username é: $username");
    print("Senha: $password");
    print("Email: $email");
    print("Genêro: $gender");
    print("Quero receber emails? $newsToEmail");
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': username,
    };
  }

  void saveUser(User user, Future<Database> database) {
    UserDatabase userDB = UserDatabase();

    userDB.insertUser(user, database);
  }

  void getUser() {}
}
