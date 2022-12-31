import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width/3;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    var altura = MediaQuery.of(context).size.height ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsividade utilizando MediaQuery"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            width: largura,
            height: altura - (alturaAppBar + alturaBarraStatus),
            color: Colors.black,
          ),
          Container(
            width: largura,
            height: altura - (alturaAppBar + alturaBarraStatus),
            color: Colors.yellow,
          ),
          Container(
            width: largura,
            height: altura - (alturaAppBar + alturaBarraStatus),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
