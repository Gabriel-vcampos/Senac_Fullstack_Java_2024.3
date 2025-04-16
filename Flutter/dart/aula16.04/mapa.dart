// Exemplo de mapas
void main(){
  // Exemplo de mapa com DDDs
  Map<int, String> ddds ={
    11: "São Paulo",
    21: "Rio de Janeiro",
    31: "Minas Gerais",
    41: "Curitiba",
    51: "Porto Alegre",
  };
  imprimirCidade(21,ddds);
}

// função para usar o map
void imprimirCidade(int ddd, Map<int, String> ddds){
  // verifica se o DDD está no mapa
  if (ddds.containsKey(ddd)){
    print("O DDD $ddd corresponde a cidade: ${ddds[ddd]}");
  } else {
    print("DDD não encontrado");
  }
}