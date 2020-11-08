import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';
import 'user.dart';
import 'dart:async';

class FormView extends StatefulWidget {
  final User user = new User();
  @override
  _FormViewState createState() => _FormViewState(user);
}

class _FormViewState extends State<FormView> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final User user;
  _FormViewState(this.user);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 52, 16, 16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Image.asset(
                "Assets/pokeball.png",
                width: 150,
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(hintText: "Usuário"),
                    validator: (String value) {
                      if (value.length < 3 || value.length > 20) {
                        return 'Seu nome deve ter pelo menos três letras e no máximo 20 caracteres';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      user.username = value;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Senha"),
                    validator: (String value) {
                      if (value.length < 8) {
                        return 'Sua senha deve ter pelo menos 8 caracteres';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      user.password = value;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: "Email"),
                    validator: (String value) {
                      if (!value.contains("@")) {
                        return 'Para sua segurança coloque um email válido por favor';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      user.email = value;
                    },
                  ),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (bool value) {
                          setState(() {
                            user.newsToEmail = value;
                          });
                        },
                        value: user.newsToEmail,
                      ),
                      Text("Quero receber novas noticias no meu email")
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: "Homem",
                            onChanged: (String value) {
                              setState(() {
                                user.gender = value;
                              });
                            },
                            groupValue: user.gender,
                          ),
                          Text("Homem")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Mulher",
                            onChanged: (String value) {
                              setState(() {
                                user.gender = value;
                              });
                            },
                            groupValue: user.gender,
                          ),
                          Text("Mulher")
                        ],
                      )
                    ],
                  ),
                  RaisedButton(
                    color: Color.fromARGB(255, 208, 76, 76),
                    textColor: Colors.white,
                    child: Text("Cadastrar"),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                        // user.saveUser(user, this.widget.database);
                        user.printValues();
                      }
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
