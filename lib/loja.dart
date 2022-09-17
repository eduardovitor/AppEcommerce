import 'package:app_ecommerce/constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loja extends StatefulWidget {
  const Loja({Key? key}) : super(key: key);

  @override
  State<Loja> createState() => _LojaState();
}

class _LojaState extends State<Loja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildLoja(),
    );
  }
}

buildLoja() {
  return SafeArea(
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [
        const SizedBox(height: 15),
        buildBarraPesquisaComIcones(),
        const SizedBox(height: 15),
        buildBannerPromocao(),
        const SizedBox(height: 15),
        buildRowOfertas()
      ],
    ),
  ));
}

buildBarraPesquisaComIcones() {
  return Row(
    children: [
      SizedBox(
        width: 200,
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: 'Pesquisar produto',
          ),
        ),
      ),
      const SizedBox(width: 7),
      Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(30)),
          child: const Icon(Icons.shopping_cart_outlined)),
      const SizedBox(width: 7),
      Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(30)),
          child: const Icon(Icons.notifications_outlined))
    ],
  );
}

buildBannerPromocao() {
  return Container(
    width: 50,
    height: 70,
    alignment: Alignment.topLeft,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: Colors.deepPurple),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: const [
          Text('Uma surpresa de verão',
              style: TextStyle(color: Colors.white, fontSize: 10)),
          SizedBox(height: 15),
          Text('Cashback 20%',
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    ),
  );
}

buildRowOfertas() {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildBotaoOferta(Icons.flash_on, 'Pechincha'),
          const SizedBox(width: 10),
          buildBotaoOferta(Icons.newspaper, 'Barato'),
          const SizedBox(width: 10),
          buildBotaoOferta(Icons.games, 'Jogos'),
          const SizedBox(width: 10),
          buildBotaoOferta(Icons.card_giftcard, 'Presente'),
          const SizedBox(width: 10),
          buildBotaoOferta(Icons.more, 'Mais')
        ],
      ));
}

buildBotaoOferta(IconData iconData, String text) {
  return Column(children: [
    Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(color: corPrimariaClara),
        child: Icon(iconData, color: corPrimaria)),
    Text(text, style: const TextStyle(color: corSecundaria))
  ]);
}
