class Usuario {
  late String nome;
  late String email;
  late String senha;

  Usuario({required this.nome, required this.email, required this.senha});

  Usuario.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
  }
}
