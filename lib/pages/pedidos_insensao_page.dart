import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:proseleta/pages/pedido_page.dart';

import '../components/text_styles.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({super.key});

  @override
  State<Pedidos> createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTitleText(data: 'Pedidos de Isenção'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(25),
        itemCount: 42,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5),
                ]
            ),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PedidoPage())
                );
              },
              title: CustomSmallText(data:'Nome do Usuario'),
              leading: CustomBodyText(data: 'Nº de inscrição: ${Random().nextInt(72) + index + 1}'),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}