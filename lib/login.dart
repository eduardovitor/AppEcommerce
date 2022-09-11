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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              construirCabecalho('Entrar', 'Bem-vindo',
                  'Entre com email e senha \n ou continue com as redes sociais'),
              const SizedBox(height: 15),
              const MeuForm()
            ],
          )));
}

construirCabecalho(String texto1, String texto2, String texto3) {
  return Center(
    child: Column(
      children: [
        Text(texto1, style: const TextStyle(color: corTexto, fontSize: 16)),
        const SizedBox(height: 30),
        Text(texto2, style: estiloCabecalho),
        const SizedBox(height: 15),
        Text(texto3,
            style: const TextStyle(color: corTexto, fontSize: 12),
            textAlign: TextAlign.center)
      ],
    ),
  );
}

buildRowOpcoes() {
  return Row(
    children: const [
      //CheckButtonWidget(),
      Text('Permanecer logado? ', style: TextStyle(fontSize: 11)),
      SizedBox(width: 70),
      Text('Esqueceu a senha?', style: TextStyle(fontSize: 11))
    ],
  );
}

buildRowRedesSociais() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        iconSize: 15,
      ),
      IconButton(
        icon: const Icon(Icons.g_mobiledata_outlined),
        onPressed: () {},
        iconSize: 15,
      ),
      IconButton(
        icon: const Icon(Icons.social_distance),
        onPressed: () {},
        iconSize: 15,
      )
    ],
  );
}

buildRowBotaoCadastrar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Não possui conta?'),
      TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          },
          child: const Text(
            'Cadastre-se',
            style: TextStyle(color: corPrimaria),
          ))
    ],
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
        buildRowOpcoes(),
        const SizedBox(height: 30),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(120, 40),
                primary: corPrimaria,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            onPressed: () {},
            child: const Text('Entrar')),
        const SizedBox(height: 20),
        buildRowRedesSociais(),
        buildRowBotaoCadastrar(context)
      ]),
    ));
  }
}
