import 'package:flutter/material.dart';
import 'package:flutter_web_teste/components/app_bar_mobile.dart';
import 'package:flutter_web_teste/components/app_bar_web.dart';
import 'package:flutter_web_teste/components/iten_produto.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  contarColunas(double largura) {
    int colunas = 2;
    if (largura <= 600) {
      colunas = 2;
    } else if (largura <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
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
                  child: const AppBarWeb()),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.count(
              crossAxisCount: contarColunas(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                ItemProduto(titulo: "Televisão da época de vovô", nomeImagem: "assets/p1.jpg", preco: "200,00"),
                ItemProduto(titulo: "Roda", nomeImagem: "assets/p2.jpg", preco: "1000,00"),
                ItemProduto(titulo: "Celular Sansung 9", nomeImagem: "assets/p3.jpg", preco: "2000,00"),
                ItemProduto(titulo: "Celular Sansung Edge", nomeImagem: "assets/p4.jpg", preco: "2000,00"),
                ItemProduto(titulo: "Celular Galaxy 10", nomeImagem: "assets/p5.jpg", preco: "1.000,00"),
                ItemProduto(titulo: "Iphone 10", nomeImagem: "assets/p6.jpg", preco: "3.500,00"),
              ],
            ),
          ),
        );
      },
    );
  }
}
