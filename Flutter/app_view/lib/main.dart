import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html ;
import 'dart:ui' as ui; // Necessário para registrar o iframe

//demonstração será criando um iframe
//instalação do plugin universal_html
//importação do pacote

void main() {
  runApp(MyWeb());
}

class MyWeb extends StatelessWidget {
  const MyWeb({super.key});

  //Registra o iframe como um elemento HTML
  Widget buildIframe(){

    final iframe = html.IFrameElement()
    ..src = 'https://fluter.dev'  //site desejado
    ..style.border = 'none'
    ..style.width = '100%'
    ..style.height = '100%';
  //Registra o iframe como uma view
  //ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
    'iframeElement',(int viewId)=>iframe,
  );
  return const HtmlElementView(viewType: 'iframeElement');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webview no flutter',
      home: Scaffold(appBar: AppBar(
        title: Text('Aula 19/05/2025'),
      ),
      body: Column(
        children: [
          Expanded(child: buildIframe(),
          ),
          Container(
            height: 60,
            color: Colors.grey[300],
            child: Center(child: Text('Rodapé'),),
          )
        ],
      )
      ),
    );
  }
}

