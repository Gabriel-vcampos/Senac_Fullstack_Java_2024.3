import 'package:flutter/material.dart';
import '../models/bebida.dart';
import '../services/bebida_service.dart';

class BebidasScreen extends StatefulWidget {
  @override
  _BebidasScreenState createState() => _BebidasScreenState();
}

class _BebidasScreenState extends State<BebidasScreen> {
  late Future<List<Bebida>> futureBebidas;

  @override
  void initState() {
    super.initState();
    futureBebidas = BebidaService().fetchBebidas();
  }

  Map<String, List<Bebida>> agruparBebidasPorCategoria(List<Bebida> bebidas) {
    Map<String, List<Bebida>> categorias = {};
    for (var bebida in bebidas) {
      if (!categorias.containsKey(bebida.categoria)) {
        categorias[bebida.categoria] = [];
      }
      categorias[bebida.categoria]!.add(bebida);
    }
    return categorias;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio de Bebidas'),
      ),
      body: FutureBuilder<List<Bebida>>(
        future: futureBebidas,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar bebidas'));
          } else if (snapshot.hasData) {
            Map<String, List<Bebida>> bebidasPorCategoria = 
                agruparBebidasPorCategoria(snapshot.data!);

            return ListView(
              children: bebidasPorCategoria.keys.map((String categoria) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        categoria,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                    ...bebidasPorCategoria[categoria]!.map((Bebida bebida) {
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: ListTile(
                          leading: Image.network(
                            bebida.imgUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => 
                                Icon(Icons.local_drink, size: 50),
                          ),
                          title: Text(bebida.descricao),
                          subtitle: Text('R\$${bebida.valor.toStringAsFixed(2)}'),
                          trailing: IconButton(
                            icon: Icon(Icons.add_shopping_cart),
                            onPressed: () {
                              // Adicionar ao carrinho
                            },
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                );
              }).toList(),
            );
          } else {
            return Center(child: Text('Nenhuma bebida encontrada'));
          }
        },
      ),
    );
  }
}