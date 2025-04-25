import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    title: 'Gabriel na área!',
    valor : 10,
  ));
}

class MyApp extends StatelessWidget {
  //passagem de parâmetro
  final String title;
  //passagem de parâmtro numérico
  final int valor;
  //configurar como requerido
  const MyApp({super.key , this.title='' , this.valor=0 });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App 1', 
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(child: Text(title)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Olá mundo!",
              style: TextStyle(fontSize: 50,
              color: Colors.black,
              backgroundColor:Colors.blue,
              wordSpacing: 20,),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("O valor é $valor",
              style: TextStyle(fontSize: 50,
              color: Colors.black,
              backgroundColor:Colors.blue,
              wordSpacing: 20,),),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.indigo,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color:const Color.fromARGB(255, 255, 255, 255)), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search, color:const Color.fromARGB(255, 255, 255, 255)), label: 'Search',),
        BottomNavigationBarItem(icon: Icon(Icons.info, color:const Color.fromARGB(255, 255, 255, 255)), label: 'Info'),
      ]),
    )
    );
  }
}