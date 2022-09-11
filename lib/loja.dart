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
    child: Column(
      children: [
        const SizedBox(height: 10),
        buildBarraPesquisaComIcones(),
        const SizedBox(height: 10),
        buildBannerPromocao()
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
    width: 300,
    height: 100,
    alignment: Alignment.topLeft,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: Colors.deepPurple),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: const [
          Text('Uma surpresa de verão',
              style: TextStyle(color: Colors.white, fontSize: 15)),
          SizedBox(height: 15),
          Text('Cashback 20%',
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ],
      ),
    ),
  );
}
