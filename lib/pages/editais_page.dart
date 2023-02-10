import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proseleta/components/text_styles.dart';

class EditaisListPage extends StatefulWidget {  
  const EditaisListPage({super.key});

  @override
  State<EditaisListPage> createState() => _EditaisListPageState();
}

class _EditaisListPageState extends State<EditaisListPage> {
  var image_list = [
    'assets/images/simbolo_medicina.jpg',
    'assets/images/simbolo_oficial_da_policia_civil_do_estado_do_rio_de_janeiro.jpg',
    'assets/images/simbolo_prefeitura_fortaleza.png',
    'assets/images/simbolo_prefeitura_jaguaribe.jpg',
    'assets/images/simbolo_sebrae.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTitleText(data:'Lista de Editais'),
      ),
      body: ListView.separated(
        itemCount: image_list.length,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            child: Card(
              elevation: 6.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(image_list[index]),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nome'),
                      Text('Estado(pais)'),
                      Text('Estado(concurso)'),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),

    );
  }
}