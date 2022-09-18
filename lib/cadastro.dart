import 'package:app_ecommerce/constantes.dart';
import 'package:app_ecommerce/usuario.dart';
import 'package:app_ecommerce/usuario_controller.dart';
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
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  TextEditingController controllerConfSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Expanded(
            child: ListView(children: [
          TextFormField(
            controller: controllerNome,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.person),
                labelText: 'Nome',
                hintText: 'Digite o seu nome',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(height: 15),
          TextFormField(
            controller: controllerEmail,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Digite o seu email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(height: 15),
          TextFormField(
            controller: controllerSenha,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.password),
                labelText: 'Senha',
                hintText: 'Digite a sua senha',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(height: 15),
          TextFormField(
            controller: controllerConfSenha,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.password),
                labelText: 'Confirme a senha',
                hintText: 'Digite sua senha novamente',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(120, 40),
                  primary: corPrimaria,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: cadastrar,
              child: const Text('Entrar')),
          buildRowRedesSociais()
        ])));
  }

  void cadastrar() async {
    Usuario usuario = Usuario(
        email: controllerEmail.text,
        nome: controllerNome.text,
        senha: controllerSenha.text);
    // ignore: unrelated_type_equality_checks
    bool senhaValida = controllerSenha.text == controllerConfSenha.text;
    bool isValid = _formkey.currentState!.validate();
    bool usuarioCadastrado =
        await UsuarioController().cadastrarUsuario(usuario);
    if (isValid && senhaValida && usuarioCadastrado) {
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, '/home');
    }
  }
}
