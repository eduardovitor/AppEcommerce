import 'package:app_ecommerce/constantes.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: construirTelaCadastro(),
      backgroundColor: Colors.white,
    );
  }
}

construirTelaCadastro() {
  return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              construirCabecalho('Cadastre-se', 'Registrar conta',
                  'Termine seu cadastro \n ou continue com as redes sociais'),
              const SizedBox(height: 15),
              const MyForm()
            ],
          )));
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Expanded(
            child: ListView(children: [
      TextFormField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.email),
            labelText: 'Email',
            hintText: 'Digite o seu email',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
      const SizedBox(height: 15),
      TextFormField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.password),
            labelText: 'Senha',
            hintText: 'Digite a sua senha',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
      const SizedBox(height: 15),
      TextFormField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.password),
            labelText: 'Confirme a senha',
            hintText: 'Digite sua senha novamente',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
      const SizedBox(height: 30),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(120, 40),
              primary: corPrimaria,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {},
          child: const Text('Entrar')),
      buildRowRedesSociais()
    ])));
  }
}
