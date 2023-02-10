import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proseleta/components/text_styles.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTitleText(data: 'Settings'),
      ),
      body: ListView(
        children: [
          Icon(
            Icons.account_circle,
            size: 100,
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: CustomBodyText(data: 'Conta'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: CustomBodyText(data: 'Notificações'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: CustomBodyText(data: 'Sobre'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: CustomBodyText(data: 'Segurança e Privacidade'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      )
    );
  }
}