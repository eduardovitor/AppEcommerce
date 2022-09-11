import 'package:app_ecommerce/constantes.dart';
import 'package:app_ecommerce/loja.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceselecionado = 0;
  static const List<Widget> _paginas = [
    Loja(),
    Text('Tela2'),
    Text('Tela3'),
    Text('Tela4')
  ];
  void _aoPressionar(int indice) {
    setState(() {
      _indiceselecionado = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _paginas.elementAt(_indiceselecionado),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.store), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
          currentIndex: _indiceselecionado,
          selectedItemColor: corPrimaria,
          unselectedItemColor: corSecundaria,
          onTap: _aoPressionar,
        ));
  }
}
