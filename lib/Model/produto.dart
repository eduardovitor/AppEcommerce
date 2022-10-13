import 'package:cloud_firestore/cloud_firestore.dart';

class Produto {
  late String nome;
  late String descricao;
  late String pathImagem;
  late double preco;
  late String cor;
  late double avaliacao;
  late String? referenceId;

  Produto(
      {required this.nome,
      required this.descricao,
      required this.preco,
      required this.cor,
      required this.avaliacao,
      required this.pathImagem,
      this.referenceId});
  factory Produto.fromSnapshot(DocumentSnapshot snapshot) {
    final newProduto =
        Produto.fromJson(snapshot.data() as Map<String, dynamic>);
    newProduto.referenceId = snapshot.reference.id;
    return newProduto;
  }
  factory Produto.fromJson(Map<String, dynamic> json) => _produtofromJson(json);
  Map<String, dynamic> toJson() => _produtoToJson(this);
}

Produto _produtofromJson(Map<String, dynamic> json) {
  return Produto(
      nome: json['nome'] as String,
      descricao: json['descricao'] as String,
      preco: json['preco'] as double,
      cor: json['cor'] as String,
      avaliacao: json['avaliacao'] as double,
      pathImagem: json['pathImagem'] as String);
}

Map<String, dynamic> _produtoToJson(Produto prodInst) => <String, dynamic>{
      'nome': prodInst.nome,
      'descricao': prodInst.descricao,
      'pathImagem': prodInst.pathImagem,
      'preco': prodInst.preco,
      'cor': prodInst.cor,
      'avaliacao': prodInst.avaliacao
    };
