import 'package:flutter/material.dart';
import 'package:flutter_web_teste/components/app_bar_mobile.dart';
import 'package:flutter_web_teste/components/app_bar_web.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  late TabController _controller;
  List<String> itensMenu = ["Entrar", "Cadastrar"];

  @override
  void initState() {
    //  _controller = TabController(
    //   length: 2,
    //   // vsync: this,
    //   initialIndex: 0,
    // );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final maisOpcoes =
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert));
  final botoes = [
    TextButton(onPressed: () {}, child: const Text("Entrar")),
    TextButton(onPressed: () {}, child: const Text("Cadastrar"))
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, regras) {
        var largura = regras.maxWidth;
        return Scaffold(
            appBar: regras.maxWidth < 600
                ? PreferredSize(
                    preferredSize: Size(largura, AppBar().preferredSize.height),
                    child: const AppBarMobile(),
                  )
                : PreferredSize(
                    preferredSize: Size(largura, AppBar().preferredSize.height),
                    child: const AppBarWeb()));
      },
    );
  }
}
