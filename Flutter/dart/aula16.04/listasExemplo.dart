// Exemplo de lista no dart
void main(){
  List<String> nomes = ["Nicho","Arrascaeta","Viña","Varela"];
  print("Lista de nomes");
  print(nomes);
  print("=-"*20);
  // Iteração da lista e printar cada nome em maiúsculo
  print("\nNomes em maiúsculo");
  for (String nome in nomes){
    print(nome.toUpperCase());
  }
  // exemplo capturando um índice
  print(nomes[0]);
}