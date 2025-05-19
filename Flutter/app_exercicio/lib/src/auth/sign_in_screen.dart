import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_feirinha/src/auth/components/custom_text.dart';
import 'package:app_feirinha/src/auth/sign_up_screen.dart';
import 'package:app_feirinha/src/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //função para realizar o login
  Future<void> loginUser(String email, String password) async{
    final url = Uri.parse('http://localhost:8080/user/login');
    try{
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'senha': password}),
        );
        if (response.statusCode == 200) {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
         );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Erro no login: ${response.body}'),)
          );
        }

    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Erro ao conectar á API: ${e}'),)
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    //definição dos campos para usuário e senha
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  children: [ 
                    TextSpan(
                      text: 'Feir',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'inha',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      ],
                    ),
                  ),
      SizedBox(
        height: 50,
        child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 25.0,
          fontFamily: 'Horizon',
          color: Colors.white
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText('Frutas'),
            RotateAnimatedText('Legumes'),
            RotateAnimatedText('Verduras'),
            RotateAnimatedText('Temperos'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
            ),
      ),
    ],
  ),
),


          Container(
            //espaçamento na horizontal e vertical
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            //arredondamento de bordas
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top:Radius.circular(45)
              )
            ),
            child: Column(
              children: [
                //email
                CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                  controller: emailController,
                ),
                //senha
                CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isObscure: true,
                  controller: passwordController,
                ),
                //botão entrar
                SizedBox(
                  // altura
                  height: 50,
                  //comprimento
                  width: 600,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                    ),
                    onPressed: () {
                      //--- mudei aqui
                      String email = emailController.text;
                      String password = passwordController.text;
                      loginUser(email, password);
                      //--------
                    }, 
                  child: Text('Entrar',
                  style: TextStyle(fontSize: 18,),),),
                ),
                Row(children: [
                  Expanded(child: Divider(
                    color: Colors.grey.withAlpha(90),
                    thickness: 1,
                  ),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text('Ou'),
                  ), 
                  Expanded(child: Divider(
                    color: Colors.grey.withAlpha(90),
                    thickness: 1,
                  ),),    
                ],),
                SizedBox(
                  height: 50,
                  width: 600,
                  child: OutlinedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen(),
                      )
                      );
                  },
                  //formatação do botão
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    side: BorderSide(
                      width: 1,
                      color: Colors.black,
                    )
                  ),
                  child: Text('Criar conta',style: TextStyle(fontSize: 18,),),),
                  ),

              ],
            ),
          )
        ],
      ),
    );
  }
}