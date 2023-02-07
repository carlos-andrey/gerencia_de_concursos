import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PedidoPage extends StatefulWidget {
  const PedidoPage({super.key});

  @override
  State<PedidoPage> createState() => _PedidoPageState();
}

class _PedidoPageState extends State<PedidoPage> {
  Color cor_aprovado = Color.fromRGBO(0, 255, 0, 1);
  Color cor_reprovado = Color.fromRGBO(255, 0, 0, 1);
  Map informacoes = {
    'nome': 'Candidato Fulado de Aquino', 
    'cod.inscrição':9876, 
    'id': 17,
    'data_pedido': DateTime.now(),
    'tipo': 'CadUnico',
    'resposta': 'Aporvado',
    'data_resposta':DateTime.now()
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Pedido'),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Text('Nome: '),
              title: Text('${informacoes['nome']}'),
            ),
            ListTile(
              leading: Text('Codigo de Inscrição: '),
              title: Text('${informacoes['cod.inscrição']}'),
            ),
            ListTile(
              leading: Text('ID: '),
              title: Text('${informacoes['id']}'),
            ),
            ListTile(
              leading: Text('Data de Pedido: '),
              title: Text('${informacoes['data_pedido']}'),
            ),
            ListTile(
              leading: Text('Tipo: '),
              title: Text('${informacoes['tipo']}'),
            ),
            ListTile(
              leading: Text('Resposta: '),
              title: Text('${informacoes['resposta']}'),
            ),
            ListTile(
              leading: Text('Data de Resposta'),
              title: Text('${informacoes['data_resposta']}'),
            ),
            
          ],
        )
      )
    );
  }
}