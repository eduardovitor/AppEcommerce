import 'package:flutter/material.dart';

class CardProduto extends StatefulWidget {
  final String pathImagem;
  final String nome;
  final String preco;
  const CardProduto(
      {Key? key,
      required this.pathImagem,
      required this.nome,
      required this.preco})
      : super(key: key);

  @override
  State<CardProduto> createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  String get pathImagem => widget.pathImagem;
  String get nome => widget.nome;
  String get preco => widget.preco;
  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.black,
        color: Colors.grey,
        child: buildCardContent(nome, pathImagem, preco));
  }
}

buildCardContent(String nome, String pathImagem, String preco) {
  return SizedBox(
    height: 100,
    width: 100,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(pathImagem),
          const SizedBox(height: 5),
          Text(nome),
          const SizedBox(height: 5),
          Text(preco.toString())
        ],
      ),
    ),
  );
}
