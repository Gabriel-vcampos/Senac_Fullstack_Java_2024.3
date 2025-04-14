// Estrutura de repetição
void main(){  
  for (int i=0; i<=10; i++){
    print ('Subindo com For '+ i.toString());
  }
  print('**__**');
  int j = 10;
  while(j>=1){
    print('Descendo com While '+j.toString());
    j--;
  }
  print('**__**');
  bool condicao = true;
  while(condicao){
    print(j);
    j++;
    if (j>5){
      condicao = false;
    }
  }
  print('**__**');
  int x = 10;
  do {
    print ('Conteúdo de x: '+ x.toString());
    x--;
  } while (x<5);
  print('**__**');
  List <String> cidades = ['Nova Iguaçu','Mesquita','Nilópolis','B.Roxo','D.Caxias','Queimados'];
  for (String cidade in cidades){
    print(cidade);
  }
}