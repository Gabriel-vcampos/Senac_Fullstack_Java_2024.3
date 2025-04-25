import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(nome:'Henrique'));
}

class MyApp extends StatefulWidget {
  // criando variáveis para uso
  final String nome;
  const MyApp({super.key , this.nome =''});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // criação de uma variável que pode ser alterada
  int salario = 7000;

  void aumentarSalario(int valor){
    setState(() {
      salario = salario + valor;
    });
  }
  void diminuirSalario(int valor){
    setState(() {
      salario = salario - valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Salário'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('O salário de ${widget.nome} é $salario'),
              ],
            ),
            SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:(){
                  aumentarSalario(200);
                }, child: Icon(Icons.add),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:(){
                  diminuirSalario(400);
                }, child: Icon(Icons.remove),),
              ],
            ),
          ],
        )
      ),
    );
  }
}
