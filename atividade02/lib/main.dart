import 'package:atividade01/arthur.dart';
import 'package:atividade01/form.dart';
import 'package:atividade01/gabriel.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'users_database.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT)",
      );
    },
    version: 1,
  );

  runApp(InitialForm());
}

class InitialForm extends StatefulWidget {
  @override
  InitialFormState createState() => InitialFormState();
}

class InitialFormState extends State<InitialForm> {
  int currentPage;
  var pages;

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    pages = [ArthurGreeting(), GabrielGreeting(), FormView()];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atividade 2",
      home: Scaffold(
        body: Center(child: pages.elementAt(currentPage)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Arthur"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Gabriel"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              title: Text("Formulário"),
            ),
          ],
          fixedColor: Colors.red,
          currentIndex: currentPage,
          onTap: (int index) {
            setState(() {
              currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
