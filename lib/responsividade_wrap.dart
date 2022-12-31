import 'package:flutter/material.dart';

class ResponsividadeWraper extends StatefulWidget {
  const ResponsividadeWraper({super.key});

  @override
  State<ResponsividadeWraper> createState() => _ResponsividadeWraperState();
}

class _ResponsividadeWraperState extends State<ResponsividadeWraper> {
  @override
  Widget build(BuildContext context) {
    //O wrap é utilizado para quebrar componentes que não cabem na tela.
    //Ele vai colocando os componentes abaixo para que possa ficar organizado
    double largura = 300;
    double altura = 100;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando wrap"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          //Formas de alinhar: center, start, end, space-around, space-between, space-evenly
          alignment: WrapAlignment.start,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.red,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
