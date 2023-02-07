import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proseleta/pages/home_page.dart';

import '../components/text_styles.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  var _showPassword = false;
  final _formKey = GlobalKey<FormState>();
  final _senhaController = TextEditingController();
  final _confirmaSenhaController = TextEditingController();
  final _emailController = TextEditingController();
  final _confirmaEmailController = TextEditingController();
  final _nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nomeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Nome'),
                    hintText: 'Fulado Sicrano Bragança',
                  ),
                  validator: (email){
                    if(email == null || email.isEmpty){
                      return 'Digite seu nome';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('E-mail'),
                    hintText: 'email@hotmail.com',
                  ),
                  validator: (email){
                    if(email == null || email.isEmpty){
                      return 'Digite seu e-mail';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _confirmaEmailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Confirmar e-mail'),
                    hintText: 'email@hotmail.com',
                  ),
                  validator: (email1){
                    if(email1 == null || email1.isEmpty){
                      return 'Re-digite seu e-mail';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: _showPassword ==false ? true : false,
                  controller: _senhaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Senha'),
                    hintText: 'Digite sua senha',
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false? Icons.visibility_off : Icons.visibility),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ), 
                  ),
                  validator: (senha){
                    if(senha == null || senha.isEmpty){
                      return 'Digite uma senha valida';
                    } else if( senha.length < 3){
                      return 'Senha muito curta';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: _showPassword ==false ? true : false,
                  controller: _confirmaSenhaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Confirmar senha'),
                    hintText: 'Digite sua senha',
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false? Icons.visibility_off : Icons.visibility),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ), 
                  ),
                  validator: (senha){
                    if(senha == null || senha.isEmpty){
                      return 'Digite uma senha valida';
                    } else if( senha.length < 3){
                      return 'Senha muito curta';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 280,
                  child: ElevatedButton(
                    child: CustomTitleText(data:'Fazer Cadastro'),
                    onPressed:() {
                      if(_formKey.currentState!.validate()){
                        if(_emailController.text != _confirmaEmailController.text){
                          final snackBar = SnackBar(
                            content: Text('E-mails não coicidem'),
                            action: SnackBarAction(
                              label: 'Entendi',
                              onPressed: (() {
                                
                              }),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }else if(_senhaController.text != _confirmaSenhaController.text){
                          final snackBar = SnackBar(
                            content: Text('Senhas não coicidem'),
                            action: SnackBarAction(
                              label: 'Entendi',
                              onPressed: (() {
                                
                              }),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }else{
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage())
                          );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}