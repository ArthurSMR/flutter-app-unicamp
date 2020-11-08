import 'package:flutter/material.dart';

class ArthurGreeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 16),
              alignment: Alignment.topCenter,
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 16,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.asset(
                      "Assets/árthur.png",
                      width: 150,
                    ),
                  ),
                  Text(
                    "Arthur Rodrigues - 213315",
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
                      Text("Análise e Desenvolvimento de Sistemas"),
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
                      Text("iOS Developer")
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Local: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Apple Developer Academy")
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
                        "Tenho 21 anos, faz 2 anos que programo em Swift (iOS Nativo) e faço o Apple Developer Academy.",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                          "Neste curso, aprendi muito sobre design, empreendedorismo e produto.",
                          textAlign: TextAlign.justify),
                      Text(
                          "Gosto muito de jogar futebol, fazer musculação, andar de bicicleta, jogar videogame e festas.",
                          textAlign: TextAlign.justify),
                      Text(
                          "Espero um dia impactar a vida de muitas pessoas utilizando tecnologia.",
                          textAlign: TextAlign.justify),
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
