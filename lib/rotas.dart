import 'package:app_ecommerce/home.dart';
import 'package:app_ecommerce/login.dart';

import 'cadastro.dart';

var routes = {
  '/': (context) => const Login(),
  '/cadastro': (context) => const Cadastro(),
  '/home': (context) => const Home()
};
