import 'package:flutter/material.dart';
import 'package:proseleta/pages/cadastro_page.dart';
import 'package:proseleta/pages/editais_page.dart';
import 'package:proseleta/pages/home_page.dart';
import 'package:proseleta/pages/login_page.dart';
import 'package:proseleta/pages/pedidos_insensao_page.dart';

import 'pages/chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CadastroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

