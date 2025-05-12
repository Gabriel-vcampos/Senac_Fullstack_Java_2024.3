import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  // Função de registro

   Future<void> registerUser(String email, String password) async {
    final url = Uri.parse(
        'http://localhost:8080/user/register'); // Rota da API de registro


    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'senha': password}),
      );


      if (response.statusCode == 201) {
        // Registro bem-sucedido
        showSnackBar('Usuário registrado com sucesso');
        // Aqui você pode exibir uma mensagem de sucesso ou redirecionar o usuário para a tela de login
      } else {
        // Falha no registro
        showSnackBar('Erro ao registrar');
        // Exibir mensagem de erro para o usuário
      }
    } catch (e) {
      showSnackBar('Erro ao conectar á API');
    }
  }





  // Função para cancelar e voltar à tela anterior
  void cancelRegistration() {
    Navigator.pop(context); // Volta para a tela anterior
  }

  //função para retorno de mensagens

   void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final email = _emailController.text;
                    final password = _passwordController.text;
                   // chamar a função para criar um novo usuário

                   registerUser(email, password);
                   
                  },
                  child: Text('Registrar'),
                ),
                ElevatedButton(
                  onPressed: cancelRegistration, // Chama a função de cancelar
                  child: Text('Cancelar'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
