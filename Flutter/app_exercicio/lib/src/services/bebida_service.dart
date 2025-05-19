import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/bebida.dart';

class BebidaService {
  final String apiUrl = 'http://localhost:8080/bebidas';

  Future<List<Bebida>> fetchBebidas() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Bebida.fromJson(item)).toList();
    } else {
      throw Exception('Erro ao carregar bebidas');
    }
  }
}