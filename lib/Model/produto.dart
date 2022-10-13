class Produto {
  late String nome;
  late String descricao;
  late String pathImagem;
  late double preco;
  late String cor;
  late double avaliacao;

  Produto(
      {required this.nome,
      required this.descricao,
      required this.preco,
      required this.cor,
      required this.avaliacao});

  Produto.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    descricao = json['descricao'];
    preco = json['preco'];
    cor = json['cor'];
    avaliacao = json['avaliacao'];
    pathImagem = json['pathImagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['preco'] = this.preco;
    data['cor'] = this.cor;
    data['avaliacao'] = this.avaliacao;
    data['pathImagem'] = this.pathImagem;
    return data;
  }
}
