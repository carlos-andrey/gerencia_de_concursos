import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proseleta/components/text_styles.dart';
import 'package:proseleta/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _showPassword = false;
  final _formKey = GlobalKey<FormState>();
  final _senhaController = TextEditingController();
  final _emailController = TextEditingController();

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
                Container(
                  height: 60,
                  width: 180,
                  child: ElevatedButton(
                    child: CustomTitleText(data:'Entrar'),
                    onPressed:() {
                      if(_formKey.currentState!.validate()){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage())
                        );
                      }
                    },
                  ),
                ),
                TextButton(
                  child: Text('Não possui conta? Faça seu cadastro!'),
                  onPressed:() {
                      if(_formKey.currentState!.validate()){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage())
                        );
                      }
                    },
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}