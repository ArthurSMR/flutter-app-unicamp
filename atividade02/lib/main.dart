import 'package:atividade01/arthur.dart';
import 'package:atividade01/form.dart';
import 'package:atividade01/gabriel.dart';
import 'package:flutter/material.dart';
import 'database/database_helper.dart';

void main() async {
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
    DatabaseHelper.helper.printValues();
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
              label: "Arthur",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Gabriel",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              label: "Formulário",
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
