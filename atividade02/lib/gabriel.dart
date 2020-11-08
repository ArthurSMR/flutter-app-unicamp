import 'package:flutter/material.dart';

class GabrielGreeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 16, top: 52),
              alignment: Alignment.topCenter,
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 16,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.asset(
                      "Assets/gábriel.jpeg",
                      width: 150,
                    ),
                  ),
                  Text(
                    "Gabriel Ferreira - 216207",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              alignment: Alignment.topLeft,
              child: Wrap(
                direction: Axis.vertical,
                spacing: 8,
                children: [
                  Row(
                    children: [
                      Text("Curso: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Sistemas de informação"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Semestre: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("6º semestre")
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Cargo: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Estagiário em Arquitetura Cloud")
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Local: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Stone Pagamentos S/A")
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Sobre mim: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          "Tenho 21 anos, sou natural de Campinas-SP mas moro em Paulínia-SP.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Comecei a estagiar em outubro/2020 e pretendo me formar no que vem.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Meus hobbies favoritos são fazer atividades físicas, jogar jogos no computador e assistir séries/vídeos.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Sou apaixonado em programação, economia e empreendedorismo, espero que no futuro eu tenha a oportunidade de criar meu próprio negócio.",
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Na área de programação, gosto muito de back-end e me interesso por desenvolvimento mobile em Flutter (tive um pequeno contato antes da disciplina), inclusive vou desenvolver um aplicativo em Flutter para o meu TCC.",
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
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
