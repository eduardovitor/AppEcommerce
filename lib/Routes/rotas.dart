import 'package:app_ecommerce/View/home.dart';
import 'package:app_ecommerce/View/login.dart';

import '../View/cadastro.dart';

var routes = {
  '/': (context) => const Login(),
  '/cadastro': (context) => const Cadastro(),
  '/home': (context) => const Home()
};
