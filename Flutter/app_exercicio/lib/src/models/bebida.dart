class Bebida {
  final int id;
  final String descricao;
  final String categoria;
  final String imgUrl;
  final double valor;

  Bebida({
    required this.id,
    required this.descricao,
    required this.categoria,
    required this.imgUrl,
    required this.valor,
  });

  factory Bebida.fromJson(Map<String, dynamic> json) {
    return Bebida(
      id: json['id'],
      descricao: json['descricao'],
      categoria: json['categoria'],
      imgUrl: json['imgUrl'],
      valor: json['valor'].toDouble(),
    );
  }
}