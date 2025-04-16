//Operadores aritméticos
//variável para uso de todas as funções
int res = 0;

void main(){
  int numero_1 = 7;
  int numero_2 = 5;
  print('Soma = ${soma(numero_1,numero_2)}');
  print('Subtração = ${subtracao(numero_1,numero_2)}');
  print('multiplicação = ${multiplicacao(numero_1,numero_2)}');
  print('Divisão = ${divisao(numero_1,numero_2)}');
}

int soma(int v1, int v2){
  res = v1+v2;
  return res;
}

int subtracao(int v1, int v2){
  res = v1-v2;
  return res;
}

int multiplicacao(int v1, int v2){
  res = v1*v2;
  return res;
}

double divisao(int v1, int v2){
  return v1 / v2;
}
int resto(int v1, int v2){
  return v1 % v2;
}
int parteInt(int v1 , int v2){
  return v1 ~/ v2;
}



/*Montem as funções subtração, multiplicação e divisão e carregue no programa*/