// Uso do Json
import 'dart:convert';

void main(){
  // criando a estrutura para dados do aluno
  String dadosAlunoJson = '''
        {
          "nome": "Kauan Santos",
          "nascimento": "2003-02-13";
          "altura": 183,
          "endereco": {
            "rua": "Rua das Flores",
            "numero": 123,
            "bairro": "Belmonte",
            "cidade": "Queimados"
          }
        }
  ''';
  // convertendo o JSON para um mapa
  Map<String, dynamic> dadosAluno = jsonDecode(dadosAlunoJson);
  Map<String, dynamic> endereco = dadosAluno['endereco'];
  // capturando e imprimindo os dados do aluno
  String nome = dadosAluno['nome'];
  String cidade = endereco['cidade'];
  print("Nome $nome");
  print("Cidade $cidade");
}