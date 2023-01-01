import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final String titulo;
  final String nomeImagem;
  final String preco;
  const ItemProduto(
      {super.key,
      required this.titulo,
      required this.nomeImagem,
      required this.preco});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              nomeImagem,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(flex: 1, child: Text(titulo)),
          Expanded(
              flex: 1,
              child: Text("R\$ $preco",
                  style: const TextStyle(fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
