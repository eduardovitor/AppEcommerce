import 'package:app_ecommerce/constantes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: construirTelaLogin(),
      backgroundColor: Colors.white,
    );
  }
}

construirTelaLogin() {
  return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              construirCabecalho(),
              const Flexible(
                  child: FractionallySizedBox(
                heightFactor: 0.3,
              )),
              const MeuForm()
            ],
          )));
}

construirCabecalho() {
  return Center(
    child: Column(
      children: const [
        Text('Entrar', style: TextStyle(color: corTexto, fontSize: 16)),
        SizedBox(height: 40),
        Text('Bem-vindo de volta', style: estiloCabecalho),
        SizedBox(height: 15),
        Text('Entre com email e senha \n ou continue com as redes sociais',
            style: TextStyle(color: corTexto, fontSize: 12),
            textAlign: TextAlign.center)
      ],
    ),
  );
}

class MeuForm extends StatefulWidget {
  const MeuForm({Key? key}) : super(key: key);

  @override
  State<MeuForm> createState() => _MeuFormState();
}

class _MeuFormState extends State<MeuForm> {
  final _formkey = GlobalKey<FormState>;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Expanded(
      child: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Digite o seu email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.password),
                labelText: 'Senha',
                hintText: 'Digite a sua senha',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          )
        ],
      ),
    ));
  }
}
