import 'package:flutter/material.dart';

class Responsividade extends StatefulWidget {
  const Responsividade({super.key});

  @override
  State<Responsividade> createState() => _ResponsividadeState();
}

class _ResponsividadeState extends State<Responsividade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsividade Usando Linhas e Colunas"),
        centerTitle: true,
      ),
      //O expended ocupa o espaço disponível
      body: Column(
        children: [
          // Container(
          //   height: 200,
          //   color: Colors.blue,
          // ),
          Expanded(
            flex: 2, //proporção que vai ocupar
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
