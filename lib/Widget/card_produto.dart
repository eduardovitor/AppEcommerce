import 'package:flutter/material.dart';

import '../Model/produto.dart';

class CardProduto extends StatefulWidget {
  final Produto produto;
  const CardProduto({Key? key, required this.produto}) : super(key: key);

  @override
  State<CardProduto> createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  Produto get produto => widget.produto;
  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.black,
        color: Colors.grey,
        child: buildCardContent(produto));
  }
}

buildCardContent(Produto produto) {
  return SizedBox(
    height: 100,
    width: 100,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(produto.pathImagem),
          const SizedBox(height: 5),
          Text(produto.nome),
          const SizedBox(height: 5),
          Text(produto.preco.toString())
        ],
      ),
    ),
  );
}
